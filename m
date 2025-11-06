Return-Path: <devicetree+bounces-235590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 51097C3A306
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 11:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B785D350644
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 10:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620422475D0;
	Thu,  6 Nov 2025 10:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h9JVmeRI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rs8BYo+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0133127146A
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 10:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762424463; cv=none; b=CWSe/ExwuLpGTWj/tpkp4/LONUEURqbvtjSfPbzm1Z2/4gjhSBc+VFt49/0anpHdv80dzKhhpxY3eFlH8QQjS5u+opzQ8gEKQJldHJisLveKzPKkZFxVSl1ezf4WP9Wky+PZoymjGIF2eOP4yL4VR67/VTYHHRJ1kW96ktWqaPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762424463; c=relaxed/simple;
	bh=SKE309P5vzD4pMZXWCw8nYg2/N22ncl9XP5vSSLO5no=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pJ+4M7xPUGQsoD4KYkaC1iIG4+xORhhDCZ12djlciGtzWnSiZkEurkvgn3m40uOudeZZ6IVgeaGEGtJ3tbxMmV9bUMVw5uYQMii/NfxwC7svesKZ0emBtgOFLq0CUDKVnWr9Pj6g9sBF3u4YoGbRyoneQr3Jk/0/kpgLT9nYIhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h9JVmeRI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rs8BYo+s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A66KXfv1689574
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 10:21:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WhBXZoFe7Hcg6gSpiw2G8HKPR5St1ckA/+z01wIesWw=; b=h9JVmeRIK90TZVFT
	QtK0eyuArJP2purjiK+4FDR/GrXg9NfJgjS1JEWicWYu9RMzMZC1Ru+qAHV12Kje
	ASAltgiyBYwv7RTF9IdzI7dNy0sXOTs9dM8exNOXygkRtiK01l1MTf7BK0aMWMpQ
	ufd3vcd0gRK9eXLYh2zu8bRF+VGheGRUa3UCKqbU5DA1vX+vHiJI0quBzweiPAKm
	hCOzj8bCqps4g8dn2IIHWp+vDNtQFuZHmmEocFeKZM8eiwT8xpkXihBivtsR+UzI
	GwMs+MFYzRdtGnX6Hd0x8jAHRvzghTZlh7zca2pAYla8vce6cOAVyCv3UV3MZKt2
	sC5JZQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a88pjb6h3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:21:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88088964786so748986d6.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 02:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762424460; x=1763029260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WhBXZoFe7Hcg6gSpiw2G8HKPR5St1ckA/+z01wIesWw=;
        b=Rs8BYo+sD72OJKdvyVQdakdm/KTbL44H36Q7s1sqwC+C2HDA8xkyOodt6Hb/vNIJrp
         bLLM5VBXNFCU6nt6u2w2ca4NS/GFYLh8E0bJGKoFWDkNzQgnPjrokNZRxtvtWcdUjduC
         5dQ2CXZ9UclbhKq4QRh28UzvWb78CE1iBQnrSXOCeo47FLdsc1lWihj8qg7alC3lAMF/
         CpDDK4z/ugfURQCd1oYxz0ni/lX6iaggNfzcKmaXo3tE40PeSiXaXLcs+qeptlVewkLc
         Up4R7qkTP2whhng9wcxxRBSq0R0uqNjQOj4RpXYNVPLt8Qagx0E4HPdV69YoOtmS3BhT
         f9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762424460; x=1763029260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WhBXZoFe7Hcg6gSpiw2G8HKPR5St1ckA/+z01wIesWw=;
        b=hFmA6xA8DGyi4Rg+IAklS6vYsYCWD/kIuf0eIKx3bDZg30LZxGE1JPDWVe2GsdfiqD
         APLSOPbRQUaifMMZrQNCIDf70H98nqhl4wpW7pKZVYNyq90Qm4S7pixqSwYE5QCoruzV
         IRUoGwfY6pNQQbqEb1fhMqIbJxo97FHD6+kt0EJZpAIRdqPOn7Nkd30UePb2rZpWoSZ7
         i7LZ1yg8MJ7O+vFrdaY9Sp1D78JvH4s5vvyY/LCuaa0jQnWL4wnD3fYSZjtIbSWc5nO0
         9BV9wHBMt0I4KLS70gk7mtATLwKYFIMwEYrd3JhBetFTgMwn8x7fmC4FViKGn0gFnaMo
         H8Eg==
X-Forwarded-Encrypted: i=1; AJvYcCUZIkgL+HER5b/4BMfjh5pcSnNJN15uWtK20L9C4a8KszaVL1sChQ/FyDplxSXssG6+iuA8bQRT7KN3@vger.kernel.org
X-Gm-Message-State: AOJu0YySD1dC7Dp8k4u0KikN5RuoxcJM47OS/Axl4hJ395ylo02LJO6G
	MtUEtje7vW67KxsfyHwD9XDzcQ/59SoKE8axaXHUOrTvm47CC+HCX+tjsS1p2ooYgxWUrENi4nu
	Hc3DdXMkm6o+VoxkfMuYS+mvjCq53GpBPisCPo57tyaOaJNap49ElEOapaN3hn8Yn
X-Gm-Gg: ASbGnctlddgsR7IDzLw0G5yNvFCR8MASoq7azVJQHzLjImTrjZIlnVIqqoKqNBR46G6
	aZl10jbuLVurTvEEdFgy38qkg3eFK/9NbqHKVm472POO8L5MU6NkQMzyUXDiqh0/acB6OkscNaq
	9ptFfSk2ynWqq8MZh7MYSKy7ujvkQFjz056pyx2ssxkQ7dN7bIIjN2NspripnlsHMMXaDiAp1wL
	6FQUyZfpFDvqk2J/ZIzIb1ySXVQpL5psuqDxux/gYMPH7JAUbgelv68PaDA8Kw+SmXC4+8lwNyv
	4JylhzsR4cKJ410mJJwHc3NqhNdfvxdWjosWR5Dlaxl37qwdagQegWxVjb6ssSpw+/rmLVoaIyM
	P3asqrLMa/OY/dC2eJVihFUoRwBOb+y0WOm/3bWqlWUHDTIZtjNrgeiPL
X-Received: by 2002:a05:6214:1256:b0:880:4585:da69 with SMTP id 6a1803df08f44-88082f24070mr21110566d6.4.1762424460163;
        Thu, 06 Nov 2025 02:21:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGENdLTnbqe8qV6m3lzr0Uih0SmnxtZVhyQI6O0w4f6eSU5i0lI7OGbFbNFszMDE28ml7uXsw==
X-Received: by 2002:a05:6214:1256:b0:880:4585:da69 with SMTP id 6a1803df08f44-88082f24070mr21110446d6.4.1762424459673;
        Thu, 06 Nov 2025 02:20:59 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7289683783sm176948466b.56.2025.11.06.02.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 02:20:58 -0800 (PST)
Message-ID: <3b4fb0f0-aba1-4396-9dc0-e470fdf253ad@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 11:20:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: Add device tree for TUXEDO Elite
 14 Gen1
To: Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ettore Chimenti <ettore.chimenti@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
        stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de
References: <20251105154107.148187-1-ggo@tuxedocomputers.com>
 <20251105154107.148187-7-ggo@tuxedocomputers.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251105154107.148187-7-ggo@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6wvpMftb4bnDzWwVhOqvk7w_5OyIO8uI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA4MCBTYWx0ZWRfX3xgsEaZoSp42
 j0ZjLQyN/qncdJOuruggYatCrd762AkWDbzIOg12DADG430bU524eVhxPbCEPfjLYreTGvlF8WL
 2sBx+Ln4TTyP25iDAH2PYLmimAC6hVOMDsifPuetJkv/fWBovAkkci7YzCn9WgylP4zqa11lI3E
 idHe+tx//5fkmKFtQoAxXYoPj7dkJ/vaV90fDztCOh1XLJHctwF1iJZQ/QI7XvOlz0emUs0HsCl
 UYrxjsmdXSUG4soO7eXrp4W0IsXUiL/CNHkum8WIlgcUMH7fbkAVEIZd6WiZd8d6ynt1VVm2aUb
 bLJukLsmGFTC12ybNdyNPGqZbwJ2/IYSv/1MMbQuqzYfXM4hbzJ2DaqJnCtyYacMQ1jXDa/Cjyv
 8CLmG6QY7pVVWcc+VGrxeLaZSCclgQ==
X-Proofpoint-ORIG-GUID: 6wvpMftb4bnDzWwVhOqvk7w_5OyIO8uI
X-Authority-Analysis: v=2.4 cv=ZODaWH7b c=1 sm=1 tr=0 ts=690c768d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=mU-DN6NyoY7MWAXVNHAA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511060080

On 11/5/25 4:41 PM, Georg Gottleuber wrote:
> Initial support for TUXEDO Elite 14 Gen1 based on Qualcomm Snapdragon X
> Elite SoC (X1E78100).

[...]


> +		wcd-playback-dai-link {
> +			link-name = "WCD Playback";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +			};
> +
> +			codec {

'co'dec < 'cp'u

Konrad


