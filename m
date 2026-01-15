Return-Path: <devicetree+bounces-255423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F1CD22C0E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F009E3009C30
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D7A2E0B77;
	Thu, 15 Jan 2026 07:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zzk2Jl+Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PiJ1tN09"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5145B1DEFE8
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461227; cv=none; b=AEqbtp4pbOUIDUeX+kw3GVn/PldrVskechVzJaE574ft8PZZCvelNiqlMzRiYs2w5oFCK7pODEw/9Fr4Lx7FEn6eJolsyaZ7NLp8FRCYqUgywk2dydoSLIRS2nlvJ0HfkfvJBHpELQwPONICqX71UvWVuz+XHAnW2dRCNR9FNeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461227; c=relaxed/simple;
	bh=gAcPsLmv59wfUIDbKrFBmoYiBiBRusqmyMUSiFFvBMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KYNfRdnoGSAvuHn8O+oY6PjR1fAOsQnk2/ZGiYiaE66e7R3Q/jkJoG8OHnYwXOUPjDDlcxyasp0lFaN4ykiW5aPi3CwrqEUGVnBrTG/1hV8FAn2PCSAJTB29Y47VsixOylECgNpcoxRU2RuS1CWjRPMOzy/PRpBpP5wNDVCcmQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zzk2Jl+Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PiJ1tN09; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g4Du1692806
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:13:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pvo/SJg4hSLFd4n3lMPTx1M6
	bVv+CIKkP5gNIJoodWY=; b=Zzk2Jl+Zgk55zLi0g9/ob4bJ+FSX+1OQgZtFCPQv
	fObUv8OBJ3R2EJY4UWeVFf96O7h8GTx1Mk2ziJEgbY6tYTKa/cqUacN8qORlqIZY
	v0TasbmHx6nfqzIXKSko6oK1CivZwambtxqJ8og8MrL/czMFI5uxTza5PLL1Mpm7
	ap5tjL6GE7DDhxU5ne8mROa7fchpL1Pnpx8CMEi/zIFvxXbujLgWpRbEiQLZiRC6
	cx6IV3fEgxgo673bqHlk0KT5hHAfViQYWRYMHiHHo+ipMYBh3mTe2Wwajx2vv+su
	P2gxkfjUvu1k6wFPo84e4DqeHBoI7892N5JVLewaZljNng==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp931knwb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:13:45 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88051c72070so14352396d6.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768461225; x=1769066025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pvo/SJg4hSLFd4n3lMPTx1M6bVv+CIKkP5gNIJoodWY=;
        b=PiJ1tN09UkxtYX4lEoMX3UUspqJqigM2rWcKHtYMsqSTbxBdYiWFWc4h3GsqWttbv4
         yV30jiNGXuOTEMkfaYEqZ0IaKY32ubZuogfIeU0kZNWyWEvynukUyOFuR4n9+28kpL6D
         GqZWWzErvhrAxzajtOE29WSGu3Gzs/qiXgg6SYCvy7FCROUIJ4wnY3pqYMZtFiSvRmxz
         6fO8dwIhBvUdwUt12PWLsHTHdpjDxg7+c4VpIl8LO6vZoYgI0s4SK1eUYI2VmBwe0f5+
         hqbOEzfj10XdrUX79HBFyN8uGFb5r0WOeQJMOBBodyuGA6ZtKjhMfsxkLb08P1iK9hyJ
         jh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768461225; x=1769066025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pvo/SJg4hSLFd4n3lMPTx1M6bVv+CIKkP5gNIJoodWY=;
        b=AhACVxoNMRalYWfMR02Xu1Me+D4cVuCcfPZAXOiruXP1z72CI4kpLkb9G3U4tsnZRk
         Z/LQ+WYPPDCC7jqsqeDfbx/lEegmTQBJo/IAmLvhQTmXkSaOyS8S0aPmNlTW8IHWAzV7
         70SE84oIPP5lvIiBZyB5xiBIwKRbyH91OE3wqOkoUb5BUAMZcQMCYMjJBZnytRASaT8e
         7hfyU2PqY62xO/07RHZI6JReQpeo2yvOqiqMO2VAvaeUotZjGdvGq9KFbccQ2Sm0PiG1
         M+bzF5jsCAtEmC0Ngc+eIGkZwcN+VYJW3Yyg+Kb1Ngl8Bx1s63dXFwZu0xNoHzx5fdyJ
         /6Gg==
X-Forwarded-Encrypted: i=1; AJvYcCW3gWQIuRWT+gTP5medsuInVgtk5ZvTsnWgeRlld0jQGqinS0IgIWYxZl+XGWZW7qtauiS2/ob0sC1x@vger.kernel.org
X-Gm-Message-State: AOJu0YxonVnzH7fX3L0ZIJc0Ft9lwMnhox/s7B/fD0NrNGluTykt/61f
	fFAKY97uzgpcTlK1GLUojzkF/X27kS4q9ChyK62b3o14+6m1G89SyBFIQX53jEmoTUcWXfOiEXF
	8bdJmFj5xhPIE+wPGZUoTH8NMTIeaiPWTmRgOLQrHf/g007RyBfsgP1tvtBeAcQKJ
X-Gm-Gg: AY/fxX777MiFrywRzJQH4cb8HK3PgNtuUVRQmOAPvrkBSxy4Y6iBmO6PaAdhwnrtWEt
	hcTWtlXp22cfKwcQw8XptA53o9pWT4pEBnSu8nC1++LbwVVHk3ETh8RA8bo7R3ArMdHvXC8CApU
	gKcoon1AZxxVAjGHqraRL98CYXg2lGWo/0VKrjkMJkh0ISwKBoMJU7IAmGG4RMzeqdUTLBMx/M4
	W6KIn/aYrulMGjQdnmVDH2vuAUvtXRSdXHCt9DRv1F0TD/Z94OCBsI6dmqnYZKKe1zx51Afat71
	4kAf6c1R/EpkuNqTaJ6qpO11mYw9ncsPi81j3cemyBT/hc1YEOsyKjZeGiaRy2vIt4tLWGVqY+5
	BwQ0r8/aRPfZmRDiuDb/0cAe0mK2XlA7fZ3WcrL1lgyosRe8jxpML5pkQYzV/M48Vv9FPOjehFt
	Enk/dwoTZd6mZbyqGsyWfk7IE=
X-Received: by 2002:a05:620a:404f:b0:8b6:134e:22f8 with SMTP id af79cd13be357-8c52fbf0bbemr708784085a.60.1768461224631;
        Wed, 14 Jan 2026 23:13:44 -0800 (PST)
X-Received: by 2002:a05:620a:404f:b0:8b6:134e:22f8 with SMTP id af79cd13be357-8c52fbf0bbemr708781885a.60.1768461224157;
        Wed, 14 Jan 2026 23:13:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba1049ba0sm1396439e87.88.2026.01.14.23.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:13:43 -0800 (PST)
Date: Thu, 15 Jan 2026 09:13:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com
Subject: Re: [PATCH v3 07/10] arm64: dts: qcom: kaanapali-qrd: Enable ADSP
 and CDSP
Message-ID: <5ycxagw32uo7f24u3msnq2jaq62ilfp37gjrp3iwb5cckiyd7i@ebw233oxq3zw>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-7-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-7-a6cc9e45de93@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BOW+bVQG c=1 sm=1 tr=0 ts=696893a9 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gN-MXTVEkoJnf6QcVyoA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: CZlHVeqrJSXRnCOUYj9XDmKaL89lTbX0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NiBTYWx0ZWRfXzQC6SBOjc6j0
 NxjRh8s3zbqaEnd4tIL9TCrJvkq6TGy+tHe/vJ4IG0xbDypwXLTHjmz3iOijUCF/pwlGioc2eXF
 fo4BrinrZE5VZ6n0Ui1mzhvMWBsJD4SW4Sk0uWPKCG1u4dkgxzKVZ84epDhOa/qRL0cCal6ntvV
 jIsfZ+ovkW/qYvc3c71EDNMa+CWtRJYj3w8DuMXuTYR0TPEEiSizrtz6+IwhFmksbYQKW7bzlHS
 1ct3GnElcPQugI+f0/FOWuZD4PovyFPMybSqWux07Xx3U6h+TzvrVpAMRh6kIox/OsPCQhNXAhK
 MyP/WKe3T3rUDlUJ85CLpEkQX5ULDI1n+vgAB2v4cUj9iNX8aMZ4E/wpgV0vWQK6fIALdrRyjZh
 0/66zMPrj09DIYWGrlzRbxbZg8h3L15p054aOxRJCfSULR8MJHwzh57d2fkZGasGEyBkuKgngIt
 beh1Re7ZL/IbQkDgQRw==
X-Proofpoint-GUID: CZlHVeqrJSXRnCOUYj9XDmKaL89lTbX0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150046

On Wed, Jan 14, 2026 at 10:49:09PM -0800, Jingyi Wang wrote:
> Enable ADSP and CDSP on Kaanapali QRD board.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-qrd.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

