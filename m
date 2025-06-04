Return-Path: <devicetree+bounces-182597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F16ACD384
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 03:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33186189B081
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 01:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368221F4C9F;
	Wed,  4 Jun 2025 01:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KfDOv9n/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF16725FA03
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 01:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748998868; cv=none; b=H5jX0rC5IpOXbx+woMC6Z7uFy6H2/2HfYCPtqXsa0m7UrgYYaRrIm3Hk9CtLZ3joK6hGH1eAi3TqA6kxmZajHmN2t+xkS4QclbGa/XcWTUgP9qTxPxxJjg0Zad7EBiMa/6MaSFDKS8YJt3ee1a/gnWvxjJ43CujUL8MHDbDSJaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748998868; c=relaxed/simple;
	bh=wDILBLMAv4tmJImmadvPYy+UXVDFV36nHmgBTyouxOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k9ZLA+1yX5+14Z41YSrO04Pi+SXrK8YxHQJm0SA87MIgvOqz7DuSZE7oi9l5xHUA5ALQT4qLrquBF1aAuZZLj4D6g25A20bLRq8nb6qqBcNGW+DSxX5aicaGeeMa62rs/sqByUR+q7bigZnQ8H8Qb6jrSySKLiDAj5XxBIFAuu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KfDOv9n/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553JVSYZ007396
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 01:00:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0TETAATiddWzakLFXxA2ygfNXSpGYQL0mslL+m00Hv0=; b=KfDOv9n/FEv4i8he
	fflq8LJHKIWs5r2ZtT6clTopgklO/bcRy4s4yFLfpCyUpINpnS0ainmKSLfxeGFL
	TBdEdOBqcwa5g+JMYJivqjOnLvTSYXZIDlNIl1z/AGf94qjSYtDwy5hUxof5gDkr
	VAsWqhRVRag180o6R8GgNAVUaWu1DcB2Hj2iW1+If6npOPZq56UjhXj9ddf7oDMJ
	IgS2QlhxEiwlR4/LRr9lnRggeXRcLJvDk8moGsKOD5i+GjLUcKobPxkPUfFVhZ3p
	UvMAzr3EBUVqpHf2bXzl83AFQCfQk+BzLFtWYNETNiU1BwVrhc9wD57yQ0e8KlWk
	7DgXgw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8svbey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:00:56 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31220ecc586so5372787a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 18:00:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748998856; x=1749603656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0TETAATiddWzakLFXxA2ygfNXSpGYQL0mslL+m00Hv0=;
        b=k7KRQtSUM2zRCVMrlcGSgamgXJ9wycsKtKqy8N500hTujq7kI1jeHHcNt2Iz42NNBM
         eD2p3+6ajMaF6s3h1dkDifJYUeUxNN9VJSNXKN89DrNCtlFfiF3KXrDi4BRUtDxyyFdk
         GG/5icKMWGxPCsd5Mqf89ylRjapItzWa34Uk7hrKE8T7CIzAD2lla7u5t/lsUckZs4t8
         9rgGWl6pazx2UOFbHvBm5YV+Ew0eggMd+bpZeLu5GyRnKLEQfClDfo1xKJ+Q9Z64G+Ez
         gCAxBLY9KIiQNcsIAXaAxeJaSovIKUwSlKA0f2n2KwA2+PUgQw4NpHFnhG43qJQTX+WL
         aKng==
X-Forwarded-Encrypted: i=1; AJvYcCUNjDl80B17RkifCWsXYh6gzIhbSCl/HwOoMYskbqJFzmfMza+16wEP8pcd3FANC813UQZC4DeK+htE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx77IUPN/O7IsQvpUzeJIhXr5XYH0jonbCuSzDumtWBlUXTOhAA
	P8UO2qllX2YemUwXJ8aITEqRG/amiVLcuhDXPDtypzxSIp95MlH2eYBCZ9umKc7MgDI3ySRhct1
	wUfbJakd8vK5uwzH/Nt4Mzc9gW2O6ebcLV4QgF7qkFJxkdGwyoQ/VyZq3okZ6j6+E
X-Gm-Gg: ASbGncvN8dkyBZBpbbtLv3wxsjuVmGDfLg3MSzVuqL3BKjyl5o7Ti1nFutL+j+NK8cO
	ZwY/rQ11+0avaIe+6Di1JYCwgVnlu/M5wmlYfksa5EpvnRL6UPVj656+81g19FH70Zcdi0OfPor
	PiEA/ScVf6ZkvvrolpZN31cwAWl0GnIvrBC48iViLxKwmYsQYY4OuQ9hvmat3QKiUa21YxZi5kV
	/ukJ4K0ZFaN+zf2ARzNlTzl4aHOX+v3TNhHIQE4HUmGrlCI6nXZ137fQY8vwS0/kMfUQNCH5R1z
	nHl4szMbga+EM0LIx4/B0gbramu67jHzwgVwIlG7CKr0BoO5IXyGR7PY66ZFOulumR745A==
X-Received: by 2002:a17:90b:2782:b0:312:f88d:25f8 with SMTP id 98e67ed59e1d1-3130ce68aa8mr1203968a91.22.1748998855853;
        Tue, 03 Jun 2025 18:00:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmRSfbGMmhaR3Ku/yZIh4G0/5XqUOhfKtwOObaYX7P945BS23NiZee6UUPyQNOtYh7bFlVUQ==
X-Received: by 2002:a17:90b:2782:b0:312:f88d:25f8 with SMTP id 98e67ed59e1d1-3130ce68aa8mr1203911a91.22.1748998855246;
        Tue, 03 Jun 2025 18:00:55 -0700 (PDT)
Received: from [10.71.109.39] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e30c697sm7881399a91.36.2025.06.03.18.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 18:00:54 -0700 (PDT)
Message-ID: <cd47f14c-908c-4fa9-97eb-d2db4c90be1b@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 18:00:53 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
        mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
        airlied@gmail.com, quic_jesszhan@quicinc.com,
        neil.armstrong@linaro.org, javierm@redhat.com, megi@xff.cz,
        Chris Morgan <macromorgan@hotmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
Content-Language: en-US
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
In-Reply-To: <20250603193930.323607-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RMizH5i+ c=1 sm=1 tr=0 ts=683f9ac9 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=69EAbJreAAAA:8 a=COk6AnOGAAAA:8
 a=cXo1RV5oYOhoEnHjMz0A:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDAwNSBTYWx0ZWRfX9uybB0ix5O4K
 6j5ZAoqDsAJS9Zn2+BbTzzJq9vPJtW3XPsaiEZfTC95g/qw34kSy7Fy40tBRlfkxcWOBWKuRys1
 B3GxJMgTwigvkDVCVnzdXemklfSPaiL1k4oQxxtLDElJaPVyYE+Rw3FxP8/HjtqplbXfv4L3J3Y
 j/TTSZJHnO9rihWqgl8IY+r1mb/MEmnBC+2TiB6U4CaSXz2iEYTlXok6OdU3/2/6dy4P8iK29ma
 0fb9ZPC/OzEOjQaiytH32Do7alZyuqqpbApSOyrpmu1MwDHhBL5UC8Eqc6BLhC2RbqkvuJTPgO7
 IrJVZBBSRjlt9UXoB7lVQtHMKcTllFyLKXxAh+GKaFN65g0jPYQc59/EK2dbaSE3pLS65hgqFZV
 I+9Iea8/bemoCTWP5a/3tJbtuhE2hSiVWXi6W2HEMkriHxTJybNQFHtvJVH1IfqN5OcTaRNs
X-Proofpoint-GUID: Z0sWpR_QW8dhJEwq0x0-J0MHBE5t1Pgm
X-Proofpoint-ORIG-GUID: Z0sWpR_QW8dhJEwq0x0-J0MHBE5t1Pgm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040005



On 6/3/2025 12:39 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Huiling hl055fhav028c panel as used on the
> Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
> display controller and requires a sparsely documented vendor provided
> init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
> as stated in the manufacturer's documentation.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

> ---
>   drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 +++++++++++++++++++++
>   1 file changed, 142 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> index ff994bf0e3cc..16e450b156b7 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t08a_desc = {
>   	.init_sequence = mchp_ac40t08a_init_sequence,
>   };
>   
> +/*
> + * HL055FHAV028C is based on Himax HX8399, so datasheet pages are
> + * slightly different than HX8394 based panels.
> + */
> +static void hl055fhav028c_init_sequence(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	/* 6.3.6 SETEXTC: Set extension command (B9h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETEXTC,
> +				     0xff, 0x83, 0x99);
> +
> +	/* 6.3.17 SETOFFSET: Set offset voltage (D2h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETOFFSET,
> +				     0x77);
> +
> +	/* 6.3.1 SETPOWER: Set power (B1h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPOWER,
> +				     0x02, 0x04, 0x74, 0x94, 0x01, 0x32,
> +				     0x33, 0x11, 0x11, 0xab, 0x4d, 0x56,
> +				     0x73, 0x02, 0x02);
> +
> +	/* 6.3.2 SETDISP: Set display related register (B2h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETDISP,
> +				     0x00, 0x80, 0x80, 0xae, 0x05, 0x07,
> +				     0x5a, 0x11, 0x00, 0x00, 0x10, 0x1e,
> +				     0x70, 0x03, 0xd4);
> +
> +	/* 6.3.3 SETCYC: Set display waveform cycles (B4h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETCYC,
> +				     0x00, 0xff, 0x02, 0xc0, 0x02, 0xc0,
> +				     0x00, 0x00, 0x08, 0x00, 0x04, 0x06,
> +				     0x00, 0x32, 0x04, 0x0a, 0x08, 0x21,
> +				     0x03, 0x01, 0x00, 0x0f, 0xb8, 0x8b,
> +				     0x02, 0xc0, 0x02, 0xc0, 0x00, 0x00,
> +				     0x08, 0x00, 0x04, 0x06, 0x00, 0x32,
> +				     0x04, 0x0a, 0x08, 0x01, 0x00, 0x0f,
> +				     0xb8, 0x01);
> +
> +	/* 6.3.18 SETGIP0: Set GIP Option0 (D3h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP0,
> +				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +				     0x06, 0x00, 0x00, 0x10, 0x04, 0x00,
> +				     0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
> +				     0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
> +				     0x00, 0x05, 0x05, 0x07, 0x00, 0x00,
> +				     0x00, 0x05, 0x40);
> +
> +	/* 6.3.19 Set GIP Option1 (D5h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP1,
> +				     0x18, 0x18, 0x19, 0x19, 0x18, 0x18,
> +				     0x21, 0x20, 0x01, 0x00, 0x07, 0x06,
> +				     0x05, 0x04, 0x03, 0x02, 0x18, 0x18,
> +				     0x18, 0x18, 0x18, 0x18, 0x2f, 0x2f,
> +				     0x30, 0x30, 0x31, 0x31, 0x18, 0x18,
> +				     0x18, 0x18);
> +
> +	/* 6.3.20 Set GIP Option2 (D6h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP2,
> +				     0x18, 0x18, 0x19, 0x19, 0x40, 0x40,
> +				     0x20, 0x21, 0x02, 0x03, 0x04, 0x05,
> +				     0x06, 0x07, 0x00, 0x01, 0x40, 0x40,
> +				     0x40, 0x40, 0x40, 0x40, 0x2f, 0x2f,
> +				     0x30, 0x30, 0x31, 0x31, 0x40, 0x40,
> +				     0x40, 0x40);
> +
> +	/* 6.3.21 Set GIP Option3 (D8h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
> +				     0xa2, 0xaa, 0x02, 0xa0, 0xa2, 0xa8,
> +				     0x02, 0xa0, 0xb0, 0x00, 0x00, 0x00,
> +				     0xb0, 0x00, 0x00, 0x00);
> +
> +	/* 6.3.9 Set register bank (BDh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
> +				     0x01);
> +
> +	/* 6.3.21 Set GIP Option3 (D8h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
> +				     0xb0, 0x00, 0x00, 0x00, 0xb0, 0x00,
> +				     0x00, 0x00, 0xe2, 0xaa, 0x03, 0xf0,
> +				     0xe2, 0xaa, 0x03, 0xf0);
> +
> +	/* 6.3.9 Set register bank (BDh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
> +				     0x02);
> +
> +	/* 6.3.21 Set GIP Option3 (D8h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
> +				     0xe2, 0xaa, 0x03, 0xf0, 0xe2, 0xaa,
> +				     0x03, 0xf0);
> +
> +	/* 6.3.9 Set register bank (BDh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
> +				     0x00);
> +
> +	/* 6.3.4 SETVCOM: Set VCOM voltage (B6h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETVCOM,
> +				     0x7a, 0x7a);
> +
> +	/* 6.3.26 SETGAMMA: Set gamma curve related setting (E0h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGAMMA,
> +				     0x00, 0x18, 0x27, 0x24, 0x5a, 0x68,
> +				     0x79, 0x78, 0x81, 0x8a, 0x92, 0x99,
> +				     0x9e, 0xa7, 0xaf, 0xb4, 0xb9, 0xc3,
> +				     0xc7, 0xd1, 0xc6, 0xd4, 0xd5, 0x6c,
> +				     0x67, 0x71, 0x77, 0x00, 0x00, 0x18,
> +				     0x27, 0x24, 0x5a, 0x68, 0x79, 0x78,
> +				     0x81, 0x8a, 0x92, 0x99, 0x9e, 0xa7,
> +				     0xaf, 0xb4, 0xb9, 0xc3, 0xc7, 0xd1,
> +				     0xc6, 0xd4, 0xd5, 0x6c, 0x67, 0x77);
> +
> +	/* Unknown command, not listed in the HX8399-C datasheet (C6h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN2,
> +				     0xff, 0xf9);
> +
> +	/* 6.3.16 SETPANEL (CCh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPANEL,
> +				     0x08);
> +}
> +
> +static const struct drm_display_mode hl055fhav028c_mode = {
> +	.hdisplay	= 1080,
> +	.hsync_start	= 1080 + 32,
> +	.hsync_end	= 1080 + 32 + 8,
> +	.htotal		= 1080 + 32 + 8 + 32,
> +	.vdisplay	= 1920,
> +	.vsync_start	= 1920 + 16,
> +	.vsync_end	= 1920 + 16 + 2,
> +	.vtotal		= 1920 + 16 + 2 + 14,
> +	.clock		= 134920,
> +	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	= 70,
> +	.height_mm	= 127,
> +};
> +
> +static const struct hx8394_panel_desc hl055fhav028c_desc = {
> +	.mode = &hl055fhav028c_mode,
> +	.lanes = 4,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init_sequence = hl055fhav028c_init_sequence,
> +};
> +
>   static int hx8394_enable(struct drm_panel *panel)
>   {
>   	struct hx8394 *ctx = panel_to_hx8394(panel);
> @@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi)
>   
>   static const struct of_device_id hx8394_of_match[] = {
>   	{ .compatible = "hannstar,hsd060bhw4", .data = &hsd060bhw4_desc },
> +	{ .compatible = "huiling,hl055fhav028c", .data = &hl055fhav028c_desc },
>   	{ .compatible = "powkiddy,x55-panel", .data = &powkiddy_x55_desc },
>   	{ .compatible = "microchip,ac40t08a-mipi-panel", .data = &mchp_ac40t08a_desc },
>   	{ /* sentinel */ }


