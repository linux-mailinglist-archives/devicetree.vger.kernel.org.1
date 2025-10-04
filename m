Return-Path: <devicetree+bounces-223612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D16BB89DF
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 08:18:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F90919C59B4
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 06:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C031521A459;
	Sat,  4 Oct 2025 06:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SHs/b3Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B67E1EF0B9
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 06:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759558699; cv=none; b=KrqI/sBhDwNywtsBAMrhcxkCf2KhpStGHns+cGG4rICZq0ugCn7DxGlHzjm1yogJfS+26bxSWqjLrNpXfr5ruaRQldJfXrdCVQMaOnve9hOb5T/EEiSaX8f8BVyzzQvaCjlb2rcA7pFMZTrjNwnb+ZRTX0nGPuFoMUdSZS+ngX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759558699; c=relaxed/simple;
	bh=31XWcry7gNMJMBFj5xXJAolY8j1SpoyiZ5JC83YhKwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rPltyJpzzVqKKb3VHFv+u/KfVrWReDos9EaxraFmrgHYiWX1pu3yDmD2X3CmTLEO4qKIETBBADs4iA+ueq+lvtndbgeMBJqIVhG2lUtEl2l9FR2vgqXwZvqdz0K1Vh4zb67x0M8UTILy4T2bUrdtBkdNi8WYmzGlwjiH9G7UyYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SHs/b3Gh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5943PwZo025762
	for <devicetree@vger.kernel.org>; Sat, 4 Oct 2025 06:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qBBjEdaHMll6uf1tUYCMqnSa
	V10k6JLabN7CElpyVZY=; b=SHs/b3GhoPVU69KMdKMUFj8FrlJEJxFn1F1FcUw1
	ox6ciOhNcxI0exwOkWebzcYY21bZi9BO9OUIR0lk1rYwfW0u+HkHsq8kPgmRPNcv
	xjXhtS1hh+TNFpjRYtGoEZ5lHFbORk8NmDr+/aexehj9dQNVGlf5N0zy25w3EUNG
	oZxOxftFNniV6jkiLy+aXtipmwkemtcL2nLJM1I6qdKQ47UQza7Gley2Xoa8HP8L
	QOIKnkV53vpdLJDZseA/ae2A3eEszxUpQqrrOdqaoO6R7+Zr2JvPZoCYkzQnWNF2
	TM3JJWkMPQHCEA11sYIlO/VpATbjwaM0XdmKqc8zvVC8Cg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu08jg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 06:18:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4de801c1446so68694231cf.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 23:18:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759558696; x=1760163496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qBBjEdaHMll6uf1tUYCMqnSaV10k6JLabN7CElpyVZY=;
        b=T2WFfwbhIR4ZQqT8Cg2FrWRBmUjDVGxyaZl5oPSJL1SFr8B+yvEydHWYlCuGxeGy6y
         ZCUswkRz18vFo3flm16XQxPKHcju9SZfGl8gT3g6t1ZiJXsNzXlbyGbZsxWp/TCpMcz4
         oJgICAShDpphItMP7OHCQKCOhzdWejfBy3zLxgNu16DVUeWZzx9nLb8VrIyqvrs7sQnt
         q/H2ZRjOXDjCUVYNs3fruf/mK0w8ffaC35AD1kPr/CLByACvZIZtwdz050ZmJXhQmnfo
         c2gSQ8r4XXvSwOlaChzA5CoxnJThIokYsA61X7UTScuRStstC5vzaX8/prSqHAffySQ5
         +fRA==
X-Forwarded-Encrypted: i=1; AJvYcCWFQ6DmzjDPaFMPdHK4XCbXXc/Ls4fMcD2s4y5XZX8WPidJCmPZtpH5zpCBL3Hk3Al1kZZTOJ23fSJt@vger.kernel.org
X-Gm-Message-State: AOJu0YyEwQj5cpgl7ZDC1XL8EVKUccSZrL82ONRskL/1eNYy2QOSUo/H
	aKkN0pW2s9A0ixh52NBc+KRntT9TTakz2RiU1eozln8TlBPHXG5kXx9JVfkYCSOil/f/wTizfHD
	v9ZIt9fjoPkz/D/4vueUWWB1VuHp2RbEhGexE16Ffigi85slYUO1Rhjn1QdfdiDI5
X-Gm-Gg: ASbGncsVZPMUcq/ZXrjvc9iGy7DAGNrPW4/pkktqnafnYtP2wXLvcli6Y22Ka7eHdN4
	Y/8l8krfC7pUKAP1NWy6zKt3nDfVHAFWj3mY9Loe8ScORt1Z0O4Kg0JpzPZsarY1O3djIq3O92X
	plATwHqBrIpZreRLr3snps4saJS1yCPgROlEv/oFl1ClNX4lsv1OJp3oiLQdisCx0rrFTKVn3JF
	Owb4/KN9VI6bgzwrqSpDwWsxZxDCmfETk6KTHzVQA5WdnzBb3b5Y4k6CI6qLVomArU7o6kgpMJm
	Aa00Xe3yMOu6B/Wd9DdxeVkM9RArjHpknWWKVGAAKqGlrgP6+1cXGPeuOMGGRFtF6u7fq/Z8mTp
	aarooGejJgk6O6HF06m/W+H89uY7Ruiym19wH2t7ljrivW1V+27HQqU7WEQ==
X-Received: by 2002:a05:622a:58e:b0:4b7:a92d:3d99 with SMTP id d75a77b69052e-4e576a469a0mr74836371cf.1.1759558695974;
        Fri, 03 Oct 2025 23:18:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRpdIygFcf6KTn5/QEqqXWhnCJScGwKcv5Z0AXlIF9fllAXu6mj2WemBQzEzvWqJKCmZoO4A==
X-Received: by 2002:a05:622a:58e:b0:4b7:a92d:3d99 with SMTP id d75a77b69052e-4e576a469a0mr74836211cf.1.1759558695552;
        Fri, 03 Oct 2025 23:18:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124378sm2558329e87.11.2025.10.03.23.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 23:18:13 -0700 (PDT)
Date: Sat, 4 Oct 2025 09:18:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcm6490-shift-otter: Use correct
 compatible for audiocc
Message-ID: <iwyoaxo53kz5b7kyz5gxme5ywtn22ho7vsrl7tsvw7uogzjz55@oeekjknm6qew>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-4-5a45923ef705@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-sc7280-dts-misc-v1-4-5a45923ef705@fairphone.com>
X-Proofpoint-ORIG-GUID: MUtfe62y2uTzhYzRutMs1W3IXRiDnre3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfXzIKwfGmuGW8i
 Fy+HRftf2HS1IE6rFhKW0p4FvX8z2Y4AZwz3T3xRTiwXwiwuX2o+TDxW0rHJUwHz5Ke41HDhBV5
 WoKrrAT8GyCusmOn9RaM4CN0H78dypE6VbBLfkchrg5iyK71WWYnIf0jnCD3vvx2xPS6GcZvhlm
 44+aPhYtpxlNL7OQMLTT2o0H0XXGiLStJTaI8BU9X02hHg9kS8dgrkYezc45zGBQfj0fFelaSvj
 tFVAyhs9pYw0GFw9fHTZ5yv0sGm+kaRN180eH20ByEzD0/r7BGRqNo2Me5vERs3TxPSSgOcSDfr
 o38UA1si46R+fBIyn+a9DJefpC45OlxQ4VEWChwH/Vq6sku/9cphFT5wENjKjA4zOUFmuSq1cEo
 tsIKNB8HLeKT38F2C1C6Ma9WuIwRIw==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e0bc28 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=ZWl6vx9Q9smWLlo6MzwA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: MUtfe62y2uTzhYzRutMs1W3IXRiDnre3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On Tue, Sep 30, 2025 at 03:57:04PM +0200, Luca Weiss wrote:
> Use the correct compatible for this phone with standard Qualcomm
> firmware and remove references to power-domains from a 'reserved' node.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

