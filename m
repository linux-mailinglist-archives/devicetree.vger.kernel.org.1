Return-Path: <devicetree+bounces-243071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BE9C93618
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 02:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B52D3AA59B
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 01:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44D141AA7BF;
	Sat, 29 Nov 2025 01:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UJsFdQlj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qxf1piQc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727CE1A3178
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764379966; cv=none; b=Hn5n537q8qXcsZU6+ik8sDpqOiTnNVPnYSrfWscXbjA7ddcpZYydkSlcZO5jZgYnY/sBExBnz7dQkdTWLmiHdVPljFdpXCn1XBV1Scz+9xk7WG+QF5QAZS2oSA7JmSULLVwELcqS1DsB4Nm8dGaHeGXZshmnOuYjguR7fl7D2AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764379966; c=relaxed/simple;
	bh=zvIjdznBdu1ZZVzjsvnLy93MnhNu63QJrHUu9sii3Cs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kuV2jewvdMLHsPJW7MV2OP1Ncqt4jhhYHjk4QB/M7M6aVzDVxaifDjNftQ27e8BEDAwN7SRkUMJxo+2qc46tJGhyPMD6mFb2bjGHonMvoE/K3hzDxeJCnnI9be0zLMZcmz9qeDotQ/CSDakBoDw6RZP5wLHMdrGQ4Pn2kkTqJkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UJsFdQlj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qxf1piQc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ASH6WAM4089698
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:32:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hoSEq3IHmBLFm4CC3oj+c91u
	/X8tntw/x0t/GIsqQlk=; b=UJsFdQljQDOSVV9fkaprFQ8pxVhmavhJahyuIPCU
	eaHvQLtdxLm6kbwvAxGMCM7GNmg6b4biFyJEwNFk4rwmJMZVRJou7r8Ccg3bnnfS
	9Rh6CyyCZMYa7tvwuk3tQsAm6f6KIzMQfgJFZ8dW+Yo/U4i/GhirWSIe7FhpGhAx
	0Mplsq+/sOHP6Lrav3faax3Nzf3/DCs2fwO42QimyMXiF/z2CfedI98SU11XY6jW
	ic4mQzfeBe8XFKVqxMJvvawJLUn+2efBeOiJqgrSejQqYOcJqO1LM7gM6kX45JYb
	FlRoapGy3DP4HpllcSAC4FzLxOdiuq2V+k8uVmnjyJKaIw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqfuj0qx6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:32:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b22d590227so247608785a.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764379963; x=1764984763; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hoSEq3IHmBLFm4CC3oj+c91u/X8tntw/x0t/GIsqQlk=;
        b=Qxf1piQcrJxrnpStRHRTuZrg5i/ScR/C+KobfGrJ20Zllshs3vvkSMGMR1cn6G57PF
         UC47mnwpYeds3Rj/W0eOM+I03N2q89F6t6BPadWOsS8/ANi5tIw2mGbOVQyfk1kepV1c
         FtFWfMV9uDh9EtUL29CWl3kMcmRXlGUaPEz/5GDmMtxxD5hfEBQQIqZdoetRJ2uOx6du
         bYuThXSXhxnJMkOg7TQ3c7PK9iNUX48Y1b58vAauGlj1mKq/YEkY1xVnrnhjnCmanqOo
         ZKhtzONBgkrfeTm2Bz2yH3a4n+sgrnqelSlqzc7bKmzyN71+cOVooSvbF6lWW/eSCcfv
         mP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764379963; x=1764984763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hoSEq3IHmBLFm4CC3oj+c91u/X8tntw/x0t/GIsqQlk=;
        b=L6tK5wzIiUEuX2cEsnm3hxMxBmHrQ5Ky/xBhOAsSomVq2JtLChY7BD3cUY9AAz9Um6
         AIaQmu7B65htx48e5cTiLfWK5EwA63WcypPqC5iGMlKmMy+ASHdRNLUkwSOHFAgWYZjd
         TwRWW6Q5zoMXEDqHUshUcckQdeQ5uith/ozrgdEocig3wh685cDFFfMR8U4kfc/RhCvm
         W67rrkTLnA69uGNoGHv9539z6xcOHUlnZubS9FytraUheCPdcvXb4YAnwQJvpaUv5ZHM
         rVJIG1jAq258X1ASnQ85OdFWUJJY8/fQvVQgGyPeGAtEl2Maab4jsrOCuNS+Yq8xvLo4
         Q2Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVRNZ46XE8yFppy94vXSw4s7VHeqqj6ufRX7IJKF5x5wmu8XxDTEf+wc7cKnSCgX2TvTRV2SyRHv9vx@vger.kernel.org
X-Gm-Message-State: AOJu0YzsuWHqshtU9mI5ud4ZZ3WuuHWbBkluFkvjnt4r65cLLYGlYFXV
	QmNWYHT18FxAxQr4eEV49tCc4WdNLf+E/PPjuS811YYE6h5PlSZOQ1Jwi+HzEdFPUQTQX5uyAd7
	5p4jQs+sC5ujzeKdxPpGXkZ6FxMefNqsAuFfI3AeiyWwo2lRkWodqSEHXvt9/ERMI
X-Gm-Gg: ASbGnct5jvqf824gxZ1Z+OHlNZI//3qi3xnnAO8DnKbwzbia4xSkIbmTWb9Cwx9KbHL
	Ge9zJgMsJvo/TahM01H1WHtDtPWVPGqolv6XUTBFqHM2mwCyJG7V9CiqTKpSe4mn5Xi/sqh4KMz
	ocRLor5glvC6ECJ14Ol5jS7oApvzbDUNT1btv382nr7lNcH7oxkVs6pdDJIZbudYGQ3d0+Q9ss/
	+axAOOlDDMSFsg2oqjTQbz6y/i9blTIPhEEANDK8iICq/sndM9tljteAXAfRWP8/4P3fWmfwY2A
	6SPelKwVyaOgIq+mdEgENRvZS2A1lSRizyirxLYCV25CWJ2dtyCu7rdHP2vJQGiX9vxTpoj/ijt
	UfihSRJ1jhqeNyDBe0kRM0w/gILDAihFKMVfAcoRXVy17g8UD1T/dSc39kT96beuO3dUO0Kyhq1
	lajewFVgRn+tzY49Oyh/UjQPk=
X-Received: by 2002:a05:620a:7104:b0:8b2:6606:edaf with SMTP id af79cd13be357-8b4ebd6a937mr2432841185a.37.1764379962586;
        Fri, 28 Nov 2025 17:32:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWvzdzE7YyN6oTLZfh4hy4cQzmISW9HLizlmpd+yym5WgSYJDQxP4XBIZvwg4EwDFqE4o/Mg==
X-Received: by 2002:a05:620a:7104:b0:8b2:6606:edaf with SMTP id af79cd13be357-8b4ebd6a937mr2432838785a.37.1764379962103;
        Fri, 28 Nov 2025 17:32:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bf8b0565sm1584882e87.32.2025.11.28.17.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 17:32:41 -0800 (PST)
Date: Sat, 29 Nov 2025 03:32:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7] arm64: dts: qcom: lemans-evk: Add OTG support for
 primary USB controller
Message-ID: <fn6xeubhprujdz4gaeh5edpuy4rsgnjxne23g5vsexmbb5ycxq@pajui632powh>
References: <20251128102507.3206169-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251128102507.3206169-1-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAxMCBTYWx0ZWRfXxjqdFTRx8jK0
 5IGy7yMij3tDBVaTBMI2HDZSAtqJVNsBhL9QNxFhPJ7w7XLNCpl5ItXtMgEGegJ7jn42DdvI4xF
 O3/j4o+YQ7QNUyU2SkRZ8txQPdvqZrTTIX35WzTcfVEdan4Goy4q98qjpNcRK9WC6iNf7LoNcOn
 mCyb6eAPckSULuqz4QAfvv7WfMDNThmZ2+q0QWmUhkdCFqJKaipuMiDCUesDREB669opWin+IGO
 2aOp0+s1eNoih9Gz0+qUIv+nlYhbKskz7aIYSbweWn1Wi8tS0Cvprb47ljAQf4T8CYWToTbLJ2f
 TCd9RxA7NvsiU9EtkWRFuszPqWEHTvjTD8vLi/AuDfL/Qh6QUWrYHkXXsNYMFRlWu+NnR3Q18Tr
 hOPMM62lgsBudiaeN4TyV0hdx9hw3Q==
X-Authority-Analysis: v=2.4 cv=GupPO01C c=1 sm=1 tr=0 ts=692a4d3b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rGjjdaST-h-79XUvT8oA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: E7sZQDBMz9_otHMuph8y4DkZ-ja6wV3I
X-Proofpoint-ORIG-GUID: E7sZQDBMz9_otHMuph8y4DkZ-ja6wV3I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511290010

On Fri, Nov 28, 2025 at 03:55:07PM +0530, Krishna Kurapati wrote:
> Enable OTG support for primary USB controller on EVK Platform. Add
> HD3SS3220 Type-C port controller present between Type-C port and SoC
> that provides role switch notifications to controller.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> Changes in v7:
> - Renamed hd3ss3220@67 to usb-typec@67
> - Compile tested since its only node name change
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

