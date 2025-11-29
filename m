Return-Path: <devicetree+bounces-243068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D0BC935A6
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 02:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A27563A7383
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 01:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72C9194A6C;
	Sat, 29 Nov 2025 01:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VcxcTHx5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EfpITwxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D0615B135
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764379022; cv=none; b=F9nuE6RoNohKEGgugfl9id9Pb8EgrjmBlYmA1zH4znj6lFTg4Nd1t5g7VnuB3B3bfqFyMDhOOTZLam9zYy1Fi2ellh/TjdVeiNCTWI1OI4I5qPYUUskI+jR3jRwvvWI7cYqM/s5WFuxSk3Qr8zeTi+SYGxNn6PAo+0jtVLhFfjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764379022; c=relaxed/simple;
	bh=pgAURVLImgMHb8PwJtcprR51OYG01XXNuOHMZZUWhXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QB14F1FTsc13QVP7axxQms661d/H9vdP9yPZNolRMXgQVHFKnLEFe8NczjBh6gRa6R6pdh5u9jmw/J5nHG/KW/ai+tVxJs3BQ/Pj+vAkSna+Ldr+tgYzzvzh8BgjtjtbwUMfyNegGaZrIGvet1EpbxErw25M9B7yqrgeZZdAXks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VcxcTHx5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EfpITwxa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AT0hVCP1309946
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TVHjKZjAbWP0AUEVropn5Esz
	RHs0ZKRms/XjXHlRyWI=; b=VcxcTHx5h0SbPR+r1WZbySbkoaJE/Cm3jcKk/ORy
	e8XbgtuhvcGcwS1FAJZuwSThO2QuJXjhGEyI4Nv76pdxZQrEeqI5tjbeEXwbxw5t
	HiS1LZ4+7XmtoPpTIASo4sz05GNz8Z56f+Sz7ylv4z+sDIzrgz5/pJgt3kMYFqdd
	S6lGD6vfROOlSJ/WR26qrD1vspVPpgzk0byvDIgp2tGrN3zGGfCQvker2ilMVBQV
	o+PnTHv2UgUWiywHmF5Qar5DVp8KXXAH/wKBEwB8+FnhCbuBc1iLgmbiTGZC3/wm
	HyWBggdpESImnL7TmpD/qnbsdSp/c0W+FfV6mC1ybYZzPg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqphf819a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:17:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b51db8ebd9so598637885a.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764379019; x=1764983819; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TVHjKZjAbWP0AUEVropn5EszRHs0ZKRms/XjXHlRyWI=;
        b=EfpITwxaBCfaoNb1WHbI/Gw6oP3Qsn+SRssfsyg7sxMUI1tylQS+l/X0TrWRGODq3t
         MrXI6I2qYZF8J2u2eDyYlHKCaKGt60eWFpGqTEnohtrThd7HGIJESy8IoVR8R1OOkafl
         65lwBrYTuXFuILVNn4TT+sM5M08HZi7xKVcRyZ5NcvLlFjbLlCYOh/sWlUPGFhrmykZq
         1mE+WV3+Hke7h7NVVKVoBecSRZXY6uG53KKiDEw8YyKc4U3FxZZ1TbcFN1v5GwQHVHr6
         lTKybuVHQpuSmUGod2QDMXWZ45fNWa5oXtR02lrBYMqMO5jEh67w9nzM1piiCWWnt6Rh
         DNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764379019; x=1764983819;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TVHjKZjAbWP0AUEVropn5EszRHs0ZKRms/XjXHlRyWI=;
        b=renWL4+ZmPlEfzXWQ/3vCJ1W9XsvGQ4pDZofYdRkOoztw2JFoKOZxKEojMxW8AIRi5
         ELGwXp3DYk+/isKTaATuXV1pqsiLY1U5JeXdZ/5sZdMao7l6oZP3TAggHP+3gNd7qjgN
         mcWwTF8vFMpRA3I29lIwSqs8SIDzHSpXFoY0ODmDgU2qMa+40OpAb9LGV3zpCin/siPA
         pwNHI2bThka3ssitNUFwqhZB+wea3nTpWoxSZuQmAyYrYTfTjX0a2llO07bNPr53TMOC
         nuBXurGOWyiPQKKd1sub/VBt429l7U3kaukkkJhxB+Du+SdHJDY2MTfBMcbxIqHhz5Z1
         IRUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoBi8CZ6d4TlGrvs3YFUsTVDCiGanKeQZH0z9MAMmjAbMmG12n8dj1nFSan5tVFNaLt3lWbE+VS09j@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdg7tgzz/6pgOo4s8/oijHmlXOd65aEG1xVwF5ChsGzEsdJx89
	67SADEyTv3FVMe9VdfV6RdrrbTbA/zsXUXXX84dVA09x4UfbWOb8GYsKLqntNw1jX9o62Ildvaj
	w6tkYniMiN0WTmavsuMPdosTqw0lFwQjZeGV889GPt46xOH+AbnxlmUAmq/0/s0ZWB/+scVWFKY
	OOqA==
X-Gm-Gg: ASbGncsS0CcwL/08uTqgKsNojcpY///ADLj2xxzV3T1CeoD/FwATjMruLVKnEE1srL3
	J3u6TU11XJm3rDKqZ9/NUxezpPK/tvMZf0RGhzWkuP0/qyGiPJ3p0fpdcl3MbGVWXGKqeabLcDp
	jng+cLIh+0krIWCEQYcXxtjNRy6e2zuTBNLKT3gvwcP0WWKChVZeUaLbV6YgRg5QH7woVy7GE/a
	B6DwvgSkeRAReXq++Bi4BhW9xfDRhJEV2vi9M/a6+lC0gEVEMUBZJwc1U3fAr5tHy2kMK6nDgs8
	ANS88cRlXh+FVhqTcJgb6ZH0LxlR5FX9rKsHTstnoLlHioMbmiue4BkioyKjX6gQ8/Q9SHtda3K
	hpvi85IIx6BlpQPdt6R51gK7C0dPrsIVaUmlLX2ThgNHVMgfqkq5UaGJTb9zo6s5jOby3xEjY8E
	QX9KMedjOSq5NilxnJcmF2hLg=
X-Received: by 2002:a05:620a:4411:b0:8b2:6251:64f9 with SMTP id af79cd13be357-8b33d4a74f3mr3680747885a.58.1764379019222;
        Fri, 28 Nov 2025 17:16:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjE68x2bojMalmuvKB2tsss4Pvti14VaY3rG2kFcJYXxvhe47IAVMBGZKPnslduXQS1/rNVg==
X-Received: by 2002:a05:620a:4411:b0:8b2:6251:64f9 with SMTP id af79cd13be357-8b33d4a74f3mr3680744285a.58.1764379018747;
        Fri, 28 Nov 2025 17:16:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bf8a7cffsm1586146e87.18.2025.11.28.17.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 17:16:56 -0800 (PST)
Date: Sat, 29 Nov 2025 03:16:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs8300: Add clocks for QoS
 configuration
Message-ID: <vgwtuoiq4rginxk6qvcfe7ccsi6udeqlrvul2wsehg2fbrrorq@hk5im2w4y6k2>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-4-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251128150106.13849-4-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: OzxdN2LIaeXriNPnRIhUTW0PdBI8SpuM
X-Authority-Analysis: v=2.4 cv=FvwIPmrq c=1 sm=1 tr=0 ts=692a498c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sc4ExDOf6ksMT09hswsA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAwOCBTYWx0ZWRfX/7eYpMqGkN4r
 7C+mWE9V6ZFtZ3sRowMSAH/lOAEZSm+XkjbXpqHm0VZ6nD0/yYk5tJjbIEqNn6hrCq3Cn2E3bYw
 t8T3T2GFO/AJ4w0BTNtvnx03JbL0oymAcUhq6aGEeAh/y5PgAaT7qR9dOXaBZ81uPemNq9fEHh1
 G7F4Y8SYj8tnzfwp9hnvVtFKNcddGo3OKFeGN3vdcsrOBifGGD1EtcyRMKwELZYsONzTo3laGmQ
 rDb9CD2a/nuKR1m85mNF3NMm02PvXaY3Yd9Pw8JFvJhShcBRelv/h/b0iNv/WAf/7hsRGLd73MV
 Zun0t+L3mSLZqeyCSMY6l31LVaxs3MtysAtF/BG+YEkOi78I9rYqfiRtMZykUJPaj8Mkq0bJ6Ot
 P6e5/8eWCW2dQ3PhDuP38crtJvKC6g==
X-Proofpoint-GUID: OzxdN2LIaeXriNPnRIhUTW0PdBI8SpuM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511290008

On Fri, Nov 28, 2025 at 08:31:06PM +0530, Odelu Kukatla wrote:
> Add clocks which need to be enabled for configuring QoS on
> qcs8300 SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

