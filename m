Return-Path: <devicetree+bounces-223598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCE0BB83F5
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4A30E4E5B86
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684B9271451;
	Fri,  3 Oct 2025 21:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pRvTdwQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD531F1306
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528676; cv=none; b=CN6Aw+j3VXy7iZNP3Ck7I8scftZy6rTElwxsQ/Rsx/FyseE8mwYfDs8YE3yz8LXPC2KligMshnXFTIah4w8mlhdJ7XdGcopiI5Pir1jRkmHRK2es5yxxCTK3oEPIe2/wBg1QKIwktiGlXOTr4iFJ4N9FPYDEGhKzb1vZUSuI2W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528676; c=relaxed/simple;
	bh=fEzp16TZ1GnYDZ47twnaQ+dNb+URfspzX8pj/3MILLE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ORxQ6xelh9q/xCMP81WOh5ghP+3+6MOvuOTCC8z6EzNtsMl6ru2h39OdlLjwAGTy3OYwPCEz9t7vO05anz+A9+Xkwk9ECISb0Ms6FNBVU5GusZVOnJ0Bbs7XXY7GJRvAChfAJ/cFdj32S6FaIbVys83MUhN0zX3nmZvEHspgAzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pRvTdwQG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593AlI7w010746
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:57:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YNYMggB94eeV7wT4wE4M0iJ1
	TwWVtN6gTYQAscDX/bI=; b=pRvTdwQGF5SCPIywI8X7hDFjxZS6ZJdKkPiVUjrC
	+ZQxBfLqKgPCNSkpZyQCpTU/yLK1GiT/Bzu0S09hC5HvbhbUKtkOJlYX6zfhUg4n
	3EjHpqsE5g2qSIkxReLU8fHJEetvjd+0KHBeuSX6qIc4GsRq9AEKcvBeGMW6osFe
	fwkhjIuxfTBewppb6xrRPtWYjS/wX60GutHoZ5UZAq9Kq0poftxmncWcII6gCHV5
	KkronXCkdTKtDdmgw10QPFFvTyVNjzWPRtQCUsqEbhTYvrd+N+V8aCh9SSjeC+Am
	GM6PRejg88ZLBrndTcfZi3LPdkBdS8SIq8G4T+TquldA5A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93huq9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:57:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e484dccaafso68272461cf.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759528673; x=1760133473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNYMggB94eeV7wT4wE4M0iJ1TwWVtN6gTYQAscDX/bI=;
        b=fw7WrdEQjOnpXyAzgFPjtsddh5je9EkDoGR3USx/T2lZ7vN9NaerB9FCWroiQ3OGtk
         lyBNs/PNjgL6bUkGJcZ/itBwgZBidCUtbPYS2LAmE9w9fnyXAQZHOfA8IhRa1UoaThoE
         QdxalV7Lfm2VdfhbIkjrR907eohBH0eiIytI+Z29/bYl2e/eIM9qSSQ44LLlT4id1MAp
         wJ9nRKjy4pgVvD3PpIPDRh9UmJrYOFefkOYBUZO1HpMBCQ6ERz8hTw9N5PHEAMOzB5uS
         CDOnclBIB9N27FBCgtl2AbkSWoIsdxB8xN7aysANtDz7z+aAWfvGh0wes88DTukztTyq
         jvXg==
X-Forwarded-Encrypted: i=1; AJvYcCWueRCXvKq+sOPqoLAFb5yp6ychB2fnnjbNaY6ijtIesvJ5HirC5nzfzrC08sF97nLa6fJIjVKbEq+Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt/cvZapWRRNbuNh3zmqtKNs/bEtLofmUneQ8O45tk2AdblQin
	sIk0jZaJQqO/F0p0Bqm2ZE2AIM2O/6aTVOVumXdRhkMCjw14J+Eb7aqXs+R8hhoA3cF3KeurzDn
	1f0V1kSEiGgz92g6BEH/QDRspnPosPks1TW5xQ1zQcjnwyXrceg8ZGrPblvATzPvd
X-Gm-Gg: ASbGncsMi/icQcZzSClks/yRdcA8cuB2yq5miwlMcK5eoLALG82jW3fwFVbhcr/zdyQ
	W0x+Kwt3oSrwtcxW+cni1vdOuABDy0FojEnYhBCwVjapF/wQEpK44UopdsPaA30yIEzxFD6dsgT
	tQGuKXM/QEg8hZYfufGA9grb5IJgNGNl2Twv4L6CZ3g8HxsmRXhV+BMkZCdITLXYArRY6RclkPl
	GpP5+QQlP53XoaL6f/YdojrJpMaek0M4Grg+ZQLMF9USfV6Qe7kR5xuOJPXG1KumzpfvWolxkoz
	A4Fbz02D1bJ8O5JBdmjjYh/ZNWzE3PbWqN50yqv4sJKg/SXDKZR7LBW3ik6mlGvUkAc7/5PUtdM
	FORjIwm0aFwOu1WrVZFH9x2eBDketJKcrvH72GtL0i3GHmsPXuGbwVDB78Q==
X-Received: by 2002:a05:622a:1a16:b0:4d5:eedd:6882 with SMTP id d75a77b69052e-4e561bc3998mr113526901cf.12.1759528672739;
        Fri, 03 Oct 2025 14:57:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmkOEk5qkYNgMXsVNq22E+jGt6uwDR3N3MQN4CYMlHhgek+PYfOCZ0N2MlvGdN4IjRHbZGAg==
X-Received: by 2002:a05:622a:1a16:b0:4d5:eedd:6882 with SMTP id d75a77b69052e-4e561bc3998mr113526611cf.12.1759528672132;
        Fri, 03 Oct 2025 14:57:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba2e3e49sm19125671fa.22.2025.10.03.14.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:57:50 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:57:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] arm64: dts: qcom: Introduce Huawei MateBook E 2019
Message-ID: <f3ofbmp6w2rthiapu22infn6bfoeancv5l2azapplpniwtr44r@ffrakyzsjody>
References: <20251001142107.21860-1-newwheatzjz@zohomail.com>
 <20251003131925.15933-1-newwheatzjz@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003131925.15933-1-newwheatzjz@zohomail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfXyiiDqYdmK5HA
 q8ETkRC7eDcAbVLL1Y5EpF8hn+rxxoXOL5ZfgK31NiyPW0HOj6mo+gMH0ko3fW0URCrUPwK4rkp
 HV+IXrBpF/TnIZnOGVMpnAiUTprnl/1iDGhaU5zXq4lncQBtAhe0Ngg7mJT8WCrJ52ck01HbsaW
 gy204ty7C43tPY3czM1NhL/dv/1fEdtP/F3/m84XacNPzQ44X51gYL4qCiUq63Gxy0QKE4UH3lo
 DJI804k/Xq1sBHPQX/UwtRRRqxWVSVNNTSZUhOhGYo3QVNUs12VjBpsd0/D+lXZGAJKe2tbTVab
 5ME2QdFEq8veQmXijI+yzLShZBy1HuBNPA7OVYIMhcj8Y8uTtFaUPcpPgQ+3G0xWEEDDvzg7qmd
 BCWvXjCSprFGsH+kud3wVQ3pZ3I5Jw==
X-Proofpoint-GUID: 6sXt8i6MLUfct5sWG136SNjPFapWLSuA
X-Proofpoint-ORIG-GUID: 6sXt8i6MLUfct5sWG136SNjPFapWLSuA
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68e046e2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=WV1l7McVAAAA:8 a=jRjEOkseAnzkkx59WGkA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=ly-PvpxawfTmY1UqWLBn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On Fri, Oct 03, 2025 at 09:19:23PM +0800, Jingzhou Zhu wrote:
> Huawei MateBook E 2019 is a 2-in-1 tablet shipped with Windows on ARM.
> It is one of the early WoA devices powered by Qualcomm Snapdragon 850,
> or the sdm850 platform. This series adds mainline Linux support for this
> device using device tree.
> 
> Changes since v1:
>  - Remove 'enable-active-high' property from &vreg_s4a_1p8 and
>    'input-enable' property from &i2c5_hid_active to avoid warnings
>    mentioned by "Rob Herring (Arm)" <robh@kernel.org>
> 
> Changes since v2:
>  - Rearranged the order of nodes and properties suggested by Bjorn to meet
>    the dts coding guidelines
> 
> base-commit: 7396732143a22b42bb97710173d598aaf50daa89
> 
> Signed-off-by: Jingzhou Zhu <newwheatzjz@zohomail.com>
> ---
> Jingzhou Zhu (2):
>   dt-bindings: arm: qcom: Document Huawei MateBook E 2019
>   arm64: dts: qcom: Add support for Huawei MateBook E 2019
> 

Please don't send new versions as a reply to the previous one. It might
be ignored by other people or by the tools.

-- 
With best wishes
Dmitry

