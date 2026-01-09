Return-Path: <devicetree+bounces-253298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2335D0A678
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAEFB307C093
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1576A35BDBC;
	Fri,  9 Jan 2026 13:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pvZqVfkS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GRgZO6pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A33C35BDA5
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767964388; cv=none; b=Ga433HaGUpNVVc9ufOMIiD1EYWrUB1yV3yAmAbctI8HYpXqw3ulpGeGlIW2oDdOJIK9Kbb7zm2RavL5e93qzs4m5D2auBnlJlKj9AdlsKwn/Nf7hyu8Taw6CsLFm2ZW3+I54hsO6a00PGoL11nGGYorhcHaKgtYB2ap3l8SUczc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767964388; c=relaxed/simple;
	bh=n9p+o+jjlXVzSPYGgZ3/XXWIFJwb0MeEoAQo+gx9h4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FQ3kgsXvxKUlzyJjaM9/BrOPJtM+xElNaajKdm038SxEg3/uAxLHzSTYYz6wOLgP72VnDs4y3Bs5/6mAxChulPlP/AKp3gNKrV3drpxJ1WBHWkOQhjIq0/UYb1qXF+NOTYNEHM0MLxSaBP4Zvp2Wyn5Gno7v+zU4XWDuDrtlVdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pvZqVfkS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GRgZO6pr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099XanC1047578
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 13:13:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HAQ2jETUJIKRwTk2kBD82NUb
	fvuyEHAaaeAEsNEprpw=; b=pvZqVfkStM/zVnvtVZTSGYW8Lp4Z2Czo4LTEsu1j
	HYbNDoy+fnjhpkbcprnglJXzh05dZnBYuvkpAiR5bm4dL0XlqcAY9sWRW+a5hnwW
	hQ01WWV/hY9rSoTI7//f30+OO+REgit4T0O/Rr2mKnfYnCUzVqp8F5adtiDgCsXZ
	Q/1bIhoZ+kzu2KUUX6VARWhCP23+VUSSv8EDOUo8Nab0BkkA4iXf0IaTSloarI+8
	+M4MmutgVJlctIbPmzX/+MXmWud0c4ch+8i46YniXUKR5uaRz1M7U5wkfq850dhk
	RkpMYtuy6Frh0Uv38H7mRhGnr//jr1W4W3ZN9QQ+itXLNg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjy5b8jsk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 13:13:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b22ab98226so846313085a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767964385; x=1768569185; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HAQ2jETUJIKRwTk2kBD82NUbfvuyEHAaaeAEsNEprpw=;
        b=GRgZO6pr+SqIh3XWREcVDHHT9YlbDVO88VwYw78sCo5XprIB413vE+9xOAxmP04QPk
         puRwlsT+1lp/58LnJB8mXpZ7Cd3frjCTE38CZXpD/jbe8kwxyzPsFl3mi7qwrahiU9BG
         Dbh7eN1f4FUB5UMBCX8SBc7mceKfMGmyZNsKw9jUjerrYnN5BiuzKGFueSoaVfOGqsfC
         EblLjcPpXYqFIynTOaX8VEHxDUtaKX/i0X0M41WTN8aaEd/PRUPw38HFnVvs5cV408NI
         APjOs6tbfNx07IVeq168uY8fanSBUruw5c4LLAmDdgvb0ZvoMm9FFZ8VJOz5/st98q2B
         K8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964385; x=1768569185;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAQ2jETUJIKRwTk2kBD82NUbfvuyEHAaaeAEsNEprpw=;
        b=p5F4YZ3FZXFFI3tc+59JWMEOcbieVGh/zrDdLPaxATIA0kJYDyY4ipyyNQsWcrXxhU
         mrm7WMKhneOM1iwDc5IOz+OFZpoybc3Dkb3tQn893d6aYzZvt1BOV1RLBTR+9D5ykbp3
         v2uiTVs8c3ru5k4DFMcaBYfAUPZDJB1EhwVDego/oPr9PFqkc0mIDXwIZaoOd7wj4gnD
         AxLCuW+UK6jVj6ovdu/N6D1y+fjQh/gbXOaMISWRavXBS9RPird7ZZYTzl+uh3WEEoK8
         0QFDGH79is3EnURat/H+/UtXvnGJFhnoXCoVYHy32w7mbZCSBSE5ffjDqo8MwXTs8eFu
         lApw==
X-Forwarded-Encrypted: i=1; AJvYcCUPRQcaEQ8MPJrW0hDP+x8acKGCEoLmsajn/xBUIUqniT/VYc8cSE9FPn9QrKWw+NCxRAL3I0WgEK8t@vger.kernel.org
X-Gm-Message-State: AOJu0Yws70OALpA/f3QuWMvsYFPM4NpDrjjSeU5xelYYmPdiyaCNMyWA
	T5iLxn6iqlD8kZ6QLQlWNgpuObqKNTv8+vlKd5LNObfHUsPnaVr/CRgQkY4pnVe6aOzuAj3NAh5
	niBZ8bIg/70U3MhcQiOglJC2Cel136PwEPq4XN7d1Vb2Aq6Kr72gpQ7u11ytpwTDt
X-Gm-Gg: AY/fxX4NfBbuqZlrOnBxmYigIglfTwWFOmxhjYBHVJ8Ysrr2QlRv2k1+lv3DKENDGRY
	yoWcihzK2+XCdXyLOs2J5BSBgXYiGPf/RCeQtYpxw0D+HiFBW8T0I98BjW+tkexXVPEoL51A8Gr
	Ng/NQuZ8fFyOxPctLHCskdqvBh7vbQ8Wyb+il6rsN9yNUVKoN5Vt1ilxTZP3apDE4XqsrfCC1Kl
	ImiyT2LBgooQiFlrRIUqbwOm8ItwAE4PtXQEwFllNgLX8qy62S+jEhed4JHQVvrwZLHD826En1i
	nIN91CYPN9uFyCimxYuE/9LGTBc/6Pq9ctJOB/qMV40J3a1IQdWbLgjXeswGA4xH9EF44BTHBwh
	tHr+oPaNUHrOEFD4dU+5A50SL5NOQU+ZGCbSQfXpUm/MBPmXEUXeyiPKMjfmfahfDLjaDae3KsU
	EUR354jiX46By7i0ck8IwKr/4=
X-Received: by 2002:a05:620a:4089:b0:8b2:e15c:be60 with SMTP id af79cd13be357-8c389429edfmr1392057785a.88.1767964384732;
        Fri, 09 Jan 2026 05:13:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwjJitLy9yE1EF3Cff9LL6AgsYBdvt5wBqevXDELT0x/mrye2ZYfBbYvnaBJsQ/NCBbtfEeg==
X-Received: by 2002:a05:620a:4089:b0:8b2:e15c:be60 with SMTP id af79cd13be357-8c389429edfmr1392051785a.88.1767964384189;
        Fri, 09 Jan 2026 05:13:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea522sm2781417e87.3.2026.01.09.05.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:13:03 -0800 (PST)
Date: Fri, 9 Jan 2026 15:13:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: hamoa: Move PHY, PERST, and
 Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports
Message-ID: <xk2har5jvunwc5lhue5j7nunrcnecnljwxz2l7cnxu4sdeyixe@bcflvpgmugyi>
References: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
 <20260109104504.3147745-2-ziyue.zhang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109104504.3147745-2-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: R4SM4Tp5f-gm80e61-X9JWWgyhwQG3D9
X-Authority-Analysis: v=2.4 cv=JP42csKb c=1 sm=1 tr=0 ts=6960fee1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hO0vvW4Z7aDYz2clpJ4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5OCBTYWx0ZWRfX2HakgDJgtYG5
 vvgkuo/gXx/XoCShVCq2a88rEEWwl06EFQUS63ULIy6FZ6Q4S2FYUT3bgt8zODWu2AtujpXBKG+
 mOul7zRo1vrmavqjjpyIXzcyiBmgiyqCIkXQgfrWJ6S3km+Nr0ouzmMjSrmR6JaewG24x48JN1V
 zZPzH9NlhItScStJGHTvB3n8RThN4BY/ABoq8Y7JXAZBm0pHoOfr9IZmHXWs0EqQAu/TJPy7ZSQ
 ABqNe576LKI+N8W4pQwW4EFDtDq33jNTe6hZ4atSlQQrqcyIE5mDn9zODfcUgaQCr5VbJ9yKLxR
 aU7DAOY9QXwLs2Pb3HrK4mnIz5vMbJw1FKFX6re7eqK+Sq/dG7enyNiOCZDNcWpaP4Rl3z2eZEp
 aM723BGVPbEWxrQeEj4hrmSRPcKhDcu68eGS2TlqG2o9ljFJuKyH9ghNZqpcus5NmjD4NwR3pii
 Jjb5vmrI5RMDIh7Yu4A==
X-Proofpoint-GUID: R4SM4Tp5f-gm80e61-X9JWWgyhwQG3D9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090098

On Fri, Jan 09, 2026 at 06:45:02PM +0800, Ziyue Zhang wrote:
> Since describing the PCIe PHY directly under the RC node is now
> deprecated, move the references to the respective PCIe port nodes,
> creating them where necessary.Also add port nodes for PCIe5 and PCIe6a
> with proper PHY references.
> 
> And also move the PCIe PERST and wake GPIOs from the controller nodes to
> the corresponding PCIe port nodes on Hamoa-based platforms:
> 
>  - x1e001de-devkit
>  - x1e78100-lenovo-thinkpad-t14s
>  - x1e80100-asus-vivobook-s15
>  - x1e80100-asus-zenbook-a14
>  - x1e80100-dell-xps13-9345
>  - x1e80100-lenovo-yoga-slim7x
>  - x1e80100-microsoft-romulus
>  - x1e80100-qcp
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi           | 42 +++++++++++++------
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts  | 24 +++++++----
>  .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 24 +++++++----
>  .../dts/qcom/x1e80100-asus-vivobook-s15.dts   | 14 ++++---
>  .../dts/qcom/x1e80100-asus-zenbook-a14.dts    |  3 ++
>  .../dts/qcom/x1e80100-dell-xps13-9345.dts     | 14 ++++---
>  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  |  8 ++--
>  .../dts/qcom/x1e80100-microsoft-romulus.dtsi  | 19 ++++++---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     | 21 ++++++----
>  9 files changed, 108 insertions(+), 61 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

