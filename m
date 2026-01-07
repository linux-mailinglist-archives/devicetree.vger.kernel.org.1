Return-Path: <devicetree+bounces-252234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 736E3CFC95E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 490A03004CC4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7EA72853F2;
	Wed,  7 Jan 2026 08:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cj6Ty4Tm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BqcSjAu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE84263C8F
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774221; cv=none; b=D25Um/PHD6XeelalBd40zUAqNdsfrN2TI9R/Va3u7lrqW1Y+fcQ/a7D71/dAmoAP8s5tv3cNlZ2nQUYkD2cwKSHb8G8dkyX66+JBNCZFaZ4/gNwB35yv/RYfscPtH9fOMUQvjXdVBvdKIFn6RFNUNAOd5nPt8TZDMmKWdtXjYK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774221; c=relaxed/simple;
	bh=U+hr1QHzRoXMDVWSLlJ/tGwfyehUdIk3yWwMMptr8KE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e1QJK3c46F1XMQd59yNHxZCtsHrIQLa7bUDcFXAeUTUZ185qIN8BiM5k4IqgY1laeeopyCpkBwITrrPKKnpZM15ptMVXV9fWlZoVspq745uCvl4MOTKOEOSlcIvhHh2zpGz1wVna2xB+PurSEMF0NQc1zGMzHJLsnhLptpUWuzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cj6Ty4Tm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BqcSjAu7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074CahF806319
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 08:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v8RCP40dP9aEqRFT58qu9rDe
	4qvB/NuaEEsh5zktbNc=; b=Cj6Ty4TmkLKhP+JMBoo/+C2Jg2boM47q/TmveQtx
	lsG+Pi0Lj2hZEsFnrb43Sa3LrWiChQh4kgrqrVanaEFCN8ex6s0kqvtvS9bFf3Oa
	D2kmhcJ5JnybKaUfnRBFBqHqP3/8UlIXqQ1ds5DGzXTaIpV33ws3BbJLhuZYQnNO
	x9FBnhYbc+719EikUTMqMyfQ4YoHfrIRG8wigpEpVR5iF76fRoFKGXBQc6TfhrLy
	SfSX/LA4myi6scuR+rYwZt1n7BohWuTVDlbxrGHm1d6xr1HJL34v2dt9d/Ac33s9
	fIQNFbzfjV/HqGp5Td0at4TtSFUr6XRPsolZBbHJFhW0DA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh7t9j4q1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:23:39 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a47331c39so48498406d6.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767774218; x=1768379018; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v8RCP40dP9aEqRFT58qu9rDe4qvB/NuaEEsh5zktbNc=;
        b=BqcSjAu7nTkRJ9j/Zia0XVkyELB5/oyhzhSwpI/vmphd33o9TjYX52yHq6aENY7oMp
         c997+NIMd0srTNHQroCBhhFox9u2+z1v4UgApZIEIiovDbL0oEFUwk3lmdIysxNvY5jo
         Xt6eqi2jGolWfHVvpqqOlVYFjPaPdEBjk1WQhcr23L8+Hn8iT8S+heK6hFQ3U3tAedOm
         gwRL7r2iQkaKPnfFhUwhbaPo6wC/6vkGWq2rrz+Lxl4gh77lvU7/MLj2hY9oI+xirCdN
         wWsMi5ZmA9CtIhi4mwhRb/Q/NmKzBfxiqD66NSexMwI6LVbgrQpy2F35OwuF7/UZREg9
         CZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767774218; x=1768379018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v8RCP40dP9aEqRFT58qu9rDe4qvB/NuaEEsh5zktbNc=;
        b=kI+BSOrB7GdoCLb/fdX4HgSAqkbpZQUKJ1IekA0KSF/BWTqI443vI4V9iB6I/iHMwZ
         CwnV4tteIcKuVZ2JHZ48aiqjCBXrrbWZWnAM33k2+GyQsiQM1PTDzZGVvuhA61YFJJIZ
         1cer6xlUD0FfXsU2BH1RppAqFyTK3EbO1bLFm3iqRofk5EwlxkN2sX2Ssu7ftVt5QuAn
         kMk+kAUST+1EjkXQSGtffferKPgLlRSAn+4zogrR2I+qxvg+WrY6gnCjv74jMJLLiEXh
         5hcpY+Lh8k1l2NWDFwTe9kP82UftxwCj+B4oTvt/Ia0nTSQW7O7MDxvKHAA7MBFLhsvn
         aoCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMcDAOMmTZ4eVYu0p/OSA/1Ket8+LG2NbXnnxsuFIZkKATXXFTe+v6qYvsyIykqfWoomd1RZ1IOaT6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3ARC+mbbo7ode8irG27iONlisU1VZc4LkYkkc3s3BNWceXjXk
	KFPLq0kPtw5V18wwIYnD2DHNU/76GhC0SPumEVDREqcmbgIFbzxMf3M2b3Bk0OD0oIToo1NDC2V
	nzHrjwCGVvdxaCqWXhIBM+NSg3KrWEFYw0aaH/6A/bP4ZHN4VZk77W2ckBD8DP2/d
X-Gm-Gg: AY/fxX6cT+0Gm+lwqIIZ0lKOjAIDJO9DKodeWGKF/dEJYd+8r1nQ+IUjhum24LTHoyH
	XEG0mJSqa8lJbvXlRzOOg42t1xuTvlEkKjYp6ZVByEAGMNIn4L8TFUJ1brkqjcIW17gM5dMBFwH
	P379Gh8bDc1/kWrB1OLYXAHo+xzfLn2roqfOltzPeJ3zzdPeRl7ISukN67O+mI0GJPilaWow3mS
	NgUo+m7mOFtOE8U+iRsTWeOfKehb2eb1QPBz3KRWslv3eo3ukAD0gjQT84wS7S1sm/xID05ESHK
	yi0N0hHJ9SFckdeSYkpfhVI00bOB18c8GjOpHOikcBMWEaKKCLfkFcVkNaQChp1KEu5+IecCnvj
	r+o8xH9qKKpU+FQLZ5Xjox1sSv1SdVk3wOICOLjHiensfHMxT0sanSzWSST3Q7F2yIoz5pLE=
X-Received: by 2002:a05:6214:5241:b0:88a:28b0:9192 with SMTP id 6a1803df08f44-890842d8164mr21423396d6.33.1767774218526;
        Wed, 07 Jan 2026 00:23:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFD8PdlT66+29ORZDNwqpWqLpJSTYj5g6EYPYXdvvT/i03znW87VXgfapJKyMkI1gFAiZfFBQ==
X-Received: by 2002:a05:6214:5241:b0:88a:28b0:9192 with SMTP id 6a1803df08f44-890842d8164mr21423276d6.33.1767774218003;
        Wed, 07 Jan 2026 00:23:38 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4a6145sm331833985a.5.2026.01.07.00.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:23:37 -0800 (PST)
Date: Wed, 7 Jan 2026 16:23:31 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 4/5] arm64: dts: qcom: talos: Fix inconsistent USB
 PHY node naming
Message-ID: <aV4YA6wFjPD8G9kk@yuanjiey.ap.qualcomm.com>
References: <20251230130227.3503590-5-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230130227.3503590-5-tessolveupstream@gmail.com>
X-Proofpoint-GUID: ftk-j_wwsjkI1tVdJaaUTRzUSXI45FBE
X-Authority-Analysis: v=2.4 cv=QfRrf8bv c=1 sm=1 tr=0 ts=695e180b cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=zGslM9qC3G87EoaUpNwA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NyBTYWx0ZWRfXx1ZIvG0V8KId
 w4DcPRpclfCHL/4XHtnRCWCRsAKZpKT0ZcxfMxDKAmizUDE0p2DEiFUZTR8rr8eOz6aTGuJWhoh
 B5T+RyKkLRLXjyEKUlg9K1kcZJa48X/7NGfJxw8/nZJ83M1D/7NwSYf09na4IGKJYsQtXDLpixI
 gPJRB+B6wFoqJhjSiY+JzLhdBhfmXfsaysY+660Rp3g+6mjBgzSu8RCtWQLLN54kS1uMfFkOO1z
 JfShHH+xOOqUAvi3skOLU2e4Etc8S7XEO2py4ZwoNy3gUqNUOzmibDPWL8A2AM9Tc5cMEwabrvX
 ts7o5WUS94fYzagxIEW3A6v2GNu0vjLIHVBITfZEwVCEiW+xOSR6+t4+ut4NNA3tWAYdnrvHmGs
 9ni1TY2bXYtoAMr5LFCgP5eWzF/EPAEi6Me4ygL1nM/qV9qovtPelidPQg7bN5PDy8BPe3sKcSJ
 qM1JwzB3hiIb/JgB1xg==
X-Proofpoint-ORIG-GUID: ftk-j_wwsjkI1tVdJaaUTRzUSXI45FBE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070067

On Tue, Dec 30, 2025 at 06:32:26PM +0530, Sudarshan Shetty wrote:
> The USB PHY nodes has inconsistent labels as 'usb_1_hspy'
> and 'usb_hsphy_2'. This patch renames them to follow
> a consistent naming scheme.
> 
> No functional changes, only label renaming.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 95d26e313622..c7dc507a50b5 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -4304,7 +4304,7 @@ osm_l3: interconnect@18321000 {
>  			#interconnect-cells = <1>;
>  		};
>  
> -		usb_1_hsphy: phy@88e2000 {
> +		usb_hsphy_1: phy@88e2000 {

Here just modify talos.dtsi, not modify qcs615-ride.dts

we will meet compile error.

Error: arch/arm64/boot/dts/qcom/qcs615-ride.dts:635.1-13 Label or path usb_1_hsphy not found.

Thanks,
Yuanjie

 			compatible = "qcom,qcs615-qusb2-phy";
>  			reg = <0x0 0x88e2000 0x0 0x180>;
>  
> @@ -4412,7 +4412,7 @@ usb_1_dwc3: usb@a600000 {
>  				iommus = <&apps_smmu 0x140 0x0>;
>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
>  
> -				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
> +				phys = <&usb_hsphy_1>, <&usb_qmpphy>;
>  				phy-names = "usb2-phy", "usb3-phy";
>  
>  				snps,dis-u1-entry-quirk;
> -- 
> 2.34.1

