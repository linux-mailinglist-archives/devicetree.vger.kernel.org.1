Return-Path: <devicetree+bounces-249952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB23CE51A5
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 16:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDD0F3009ABD
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352961A01C6;
	Sun, 28 Dec 2025 15:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LQsQluS4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ObX6d7/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF29A41
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766934075; cv=none; b=fPWYA7I9gX887bin9m4jZEIAwYt2F4Wg6yIzD5+Ccy+NfsgkRpNjQhHGVqeYAnl8qk0sJtePfmrov7EmigTaq2o2EnEXjkMKx+jew+vxiwJL0Aw8IhHrYbbmbdIy/2NBQWQLG1cfCCidP25mRQikJEjoGKVXBmHxW6sZozKLYPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766934075; c=relaxed/simple;
	bh=kDiW0gQf9z39ULzuEFmOKkyPSpbzzbZwla0F4wa2nVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NFJfxbre5jBUm3EszRdJHjztQP2RudwbDfojEnxOvtYn4jG8bAy0m5stOpu2EjJW4klcpp07C7yvr/VoDzzAV8mkOxnvPbE9DfKOKpmHS0oPDGqg3yLlqNsn014ooFEDmySGnkouD9YH6UCOpyR3NKqkUlcIbmNOZSwOgRTwdXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LQsQluS4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ObX6d7/d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BS1EJrI1564353
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:01:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5/0eQDhlF2HPrLEMfmPQbXvu
	HlFxGfm1CLOl2CgGH8c=; b=LQsQluS4/NDzZw+qTNCN5YMJ3MO3djO1SDdeUQxX
	eWTDVgEt2AdrEN8MqZmglZl2MgSFKQXMpaaojmvpEcdDTdEr9jIdXWEIHQNdRJ1g
	JVnCZtDFPXtZYYONGMty7eMSjYA9QJGSidFukllrWVs/oqmmxoWMDZ1PWvp4p/4H
	AKwHccdemH524F/5RN0c+bErC76KFrkd6iconW45ibnueyhfamfIQPNc3v4p7UGp
	RJvsDKgZa6i+cGGf/newhzAa6lFGEWMl5dojx0dtB2FjDvNzNeutw3HvkMTT0deY
	Y9uCBSE2H30CQvLoQlyX/QF/DCMEkaGbT0pf2OQ9e03ojw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7hsaadm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:01:11 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-93f5d18f105so7473992241.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766934071; x=1767538871; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5/0eQDhlF2HPrLEMfmPQbXvuHlFxGfm1CLOl2CgGH8c=;
        b=ObX6d7/dWXpry6rKa3J7Rz7ZeAZGxiBafYep3VSjxTSNwITQ+ef8kPtN7Gpr4YH4zC
         gzh/C1trLlzN1LdYMsYN9az8w2pn/uRjF7/GzlBZX8lx64ShF6oCK+4ht5rYkzmSwIm7
         3QEq3VtJYxTicsmqYTbzK7iTdJfMVvnMm8BuQ4x++ycXHl5fzclE3D18upbH+qZyOUbk
         HooKgNTAVfpHGV/Y++tU/oyfAKGQBEyYK1ELCqnLHkyKsSa1Z/lSY/bqpS6lQDi/lmOT
         wfTc/Quz+0AoyMRq3da/n+bX6VckBLhKp77RKNaJe3GYIsWjz7MUnEwIDhH1CDIdCsb7
         HASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766934071; x=1767538871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5/0eQDhlF2HPrLEMfmPQbXvuHlFxGfm1CLOl2CgGH8c=;
        b=l51D5X28J2SZLW0BFKUYMZ5dSjdG8CfNO4QEaLNuUV0edfJX2gPPCaZ88/AiyeXB9h
         24eWnvdPFiXv9q9P9lZamJk8f5dNHkCbuB9rEcRews5yQc7JsP1eX5ScfbW7VRj0XRh8
         bO5vggBwxnCtrYjLFhsYbBzOL72cYeaK8NjkOgPSvW3+AjUoTEQR+9LhhJgOJlX/IbSY
         ECUYPXUw7XSNlEnBkgnZcN0TDCZPQ4oVW0dux4IDTf6EoIISbDiUqbazPVjo8nvfMHyB
         sXuqb1fJnLJvEqxp3WyTbUDHLc3kdVEnGjTcp5mZDGNrQkA1iar0MlfspSDNmATE3VAj
         fJiA==
X-Forwarded-Encrypted: i=1; AJvYcCUG0P5viQ2Wkad0ic3YY09KbNKpZPO3ervOjIwQ6CeO0OiVFnkh2pZBLLoAlgXkY9Twa6gl1AkILNeL@vger.kernel.org
X-Gm-Message-State: AOJu0YwtAx1r805Mm1q7fsUFxnbWLGWfy8gBUxGHEExEJe6+NborjQ8F
	DHrFiwkMujsrS4zVOxPP3Ud1Xb0AK4eqe/TDw/6xDLHWjEv/LRc5iU7ziSYH45CmE0OFOwP48v0
	TDYbtfPWYTtzSCxDPzDP9Vlx4EO1TF5RlI7JmlsZu6Lio5/tq2Q50MQHWOJUf8xJz
X-Gm-Gg: AY/fxX6dnJEBIvKIozjWjpWGOdf8NmXfiBj0cbbBQa9REuWS0iztFy0vgA8GcqCC0Sv
	26aUP/udtK2gl0W8b0tcgl3/9FW9e8NJLOhFe8eS0Pl8nWhEMyqJz11akeGvwNnVtV3LWqyO1ww
	6wIe8Mt/U0dWYwfToZJgWuzo1RC/O4qutrs0zSgLA/YxtEcGaho+0pV/0TqM+UqMDuqxt+1iNtk
	vUB16oQPZ8Ncqg1t1Ythro1bwsUoLH8W36w4T0DWPVNPtP5AFhw4RjGvVUPidzogyziCXOieCUV
	XGtHZqrFa2/ceJssuotd6XkfoSkajzoLRIVOXg9iRhfqNV6T1cxvd1GUNpHVwUaEGkdpfXUgFVG
	FTyO0BIiedXNYu//aHbjktgDM+Xinew2+6nLkI6ADe1nKYorTOp/7Iy7yWWW595hI9d/wCsLPmN
	Pl/Ai4km7z7gcRcPPR9r5jcWc=
X-Received: by 2002:a05:6102:4a84:b0:5df:c228:288d with SMTP id ada2fe7eead31-5eb1a625997mr8265779137.8.1766934070597;
        Sun, 28 Dec 2025 07:01:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/+QFy+XNUUdpgR0yvVIaXhHA4gjvR7HFPwRlNE46+le38X/7ttZyf+He0wPFCxrKBloKjTg==
X-Received: by 2002:a05:6102:4a84:b0:5df:c228:288d with SMTP id ada2fe7eead31-5eb1a625997mr8265729137.8.1766934070052;
        Sun, 28 Dec 2025 07:01:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ea2d8sm8100512e87.45.2025.12.28.07.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 07:01:07 -0800 (PST)
Date: Sun, 28 Dec 2025 17:01:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
Message-ID: <ud4eneuxamylrbiaqr6d6ntoh52kk6aqr6rc2v7lu24lhulidg@sdruua7h4yxh>
References: <20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com>
 <20251228-lt8713sx-bridge-driver-v3-2-9169fbef0e5b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251228-lt8713sx-bridge-driver-v3-2-9169fbef0e5b@oss.qualcomm.com>
X-Proofpoint-GUID: 1FVa7U3IIp2RUIOt5eAmrIpk9f4RN0Xy
X-Authority-Analysis: v=2.4 cv=O4o0fR9W c=1 sm=1 tr=0 ts=69514637 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8 a=s0IaEJ_OwYWvi6_HU58A:9 a=CjuIK1q_8ugA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-ORIG-GUID: 1FVa7U3IIp2RUIOt5eAmrIpk9f4RN0Xy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEzNyBTYWx0ZWRfX/A0jQdbdYcXV
 CuGrCphV9RNjgY8kxfNktP7/qyvkCDp6p5Qwf/XWJTK0PfXXTsZH85WhHcJ2V0TAF0QA3Zm9DvE
 ImHetmRjPDmHpHkeqpaxtFWgHbxGjtVWEnoWExT7HWGeqqZCThrsFkpfnHNCUNGA06cZJ3YejFS
 CzaO+SAgnMd2/n+32nJ+sVSIDAJDtkea2u4UXPwDfVSZ6WPJfqWJm0lzstKIvYVz1K8KjqpWq7q
 ix8Q1M1TI83JvIVX0EaMWK0/lP4qHPZryaKI6S/Akwl+jzYWEA4XM1OFJ0pNlju0UvDLTAxHVTs
 6LdlXue0HfrJ4OP995X8V4sd7s1lDOmf7okRZn3jsoYxn9tuhW1I1gXQ3yQ9jgHBmoYf0sZbSPz
 KMrtdSD40AVPw/vVwMZL7jWhwSnKRTnEMcKUARB4gCYhNphy4bIu0Z9xlvM0KZ4DOy+uzqZL2yp
 uwcTfQMlXJ8dlDppS4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512280137

On Sun, Dec 28, 2025 at 05:10:40PM +0530, Vishnu Saini wrote:
> The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
> with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
> audio output interface.
> 
> Driver is required for firmware upgrade in the bridge chip.

Or for enabling the bridge chip. Or for building the bridge chains
inside Linux kernel...

Also, do we need any special handling for DP++ / HDMI devices being
attached to the bridge?

> 
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig            |  10 +
>  drivers/gpu/drm/bridge/Makefile           |   1 +
>  drivers/gpu/drm/bridge/lontium-lt8713sx.c | 682 ++++++++++++++++++++++++++++++
>  3 files changed, 693 insertions(+)
> 
> +
> +#define FW_FILE "lt8713sx_fw.bin"

I'm still looking forward to seeing this file in linux-firmware.

> +
> +#define REG_PAGE_CONTROL	0xff
> +
> +#define MAX_OUTPUT_PORTS	3
> +#define LT8713SX_PAGE_SIZE	256
> +
> +DECLARE_CRC8_TABLE(lt8713sx_crc_table);
> +
> +struct lt8713sx {
> +	struct device *dev;
> +	struct drm_bridge bridge;
> +	struct drm_bridge *next_bridge[MAX_OUTPUT_PORTS];
> +	int num_outputs;
> +
> +	struct regmap *regmap;
> +	/* Protects all accesses to registers by stopping the on-chip MCU */
> +	struct mutex ocm_lock;
> +
> +	struct gpio_desc *reset_gpio;
> +	struct gpio_desc *enable_gpio;
> +
> +	struct i2c_client *client;
> +	const struct firmware *fw;
> +
> +	u8 *fw_buffer;
> +
> +	u32 main_crc_value;
> +	u32 bank_crc_value[17];
> +
> +	int bank_num;
> +};
> +
> +static void lt8713sx_reset(struct lt8713sx *lt8713sx);
> +
> +static const struct regmap_range lt8713sx_ranges[] = {
> +	{
> +		.range_min = 0x0000,
> +		.range_max = 0xffff
> +	},
> +};
> +
> +static const struct regmap_access_table lt8713sx_table = {
> +	.yes_ranges = lt8713sx_ranges,
> +	.n_yes_ranges = ARRAY_SIZE(lt8713sx_ranges),
> +};
> +
> +static const struct regmap_range_cfg lt8713sx_range_cfg = {
> +	.name = "lt8713sx",
> +	.range_min = 0x0000,
> +	.range_max = 0xffff,
> +	.selector_reg = REG_PAGE_CONTROL,
> +	.selector_mask = 0xff,
> +	.selector_shift = 0,
> +	.window_start = 0,
> +	.window_len = 0x100,
> +};
> +
> +static const struct regmap_config lt8713sx_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.volatile_table = &lt8713sx_table,
> +	.ranges = &lt8713sx_range_cfg,
> +	.num_ranges = 1,
> +	.cache_type = REGCACHE_NONE,
> +	.max_register = 0xffff,
> +};
> +
> +static void lt8713sx_i2c_enable(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe0ee, 0x01);
> +}
> +
> +static void lt8713sx_i2c_disable(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe0ee, 0x00);
> +}
> +
> +static u32 calculate_crc(const u8 *upgrade_data, u64 len, u64 crc_size)
> +{
> +	u8 crc = 0x00;
> +	u8 pad = 0xff;
> +
> +	crc = crc8(lt8713sx_crc_table, upgrade_data, len, crc);
> +
> +	/* pad remaining bytes */
> +	crc_size -= len;
> +	while (crc_size--)
> +		crc = crc8(lt8713sx_crc_table, &pad, 1, crc);

As I wrote before, you are basically calculating the CRC over the padded
buffer. Please pad the buffer and calculate it over the whole buffer
rather than doing this byte by byte.

> +
> +	return crc;
> +}
> +
> +static int lt8713sx_prepare_firmware_data(struct lt8713sx *lt8713sx)
> +{
> +	int ret = 0;
> +	u64 sz_12k = 12 * SZ_1K;
> +
> +	ret = request_firmware(&lt8713sx->fw, FW_FILE, lt8713sx->dev);
> +	if (ret < 0) {
> +		dev_err(lt8713sx->dev, "request firmware failed\n");
> +		return ret;
> +	}
> +
> +	dev_dbg(lt8713sx->dev, "Firmware size: %zu bytes\n", lt8713sx->fw->size);
> +
> +	if (lt8713sx->fw->size > SZ_256K - 1) {
> +		dev_err(lt8713sx->dev, "Firmware size exceeds 256KB limit\n");
> +		release_firmware(lt8713sx->fw);
> +		return -EINVAL;
> +	}
> +
> +	lt8713sx->fw_buffer = kvmalloc(SZ_256K, GFP_KERNEL);
> +	if (!lt8713sx->fw_buffer) {
> +		release_firmware(lt8713sx->fw);
> +		return -ENOMEM;
> +	}
> +
> +	memset(lt8713sx->fw_buffer, 0xff, SZ_256K);
> +
> +	if (lt8713sx->fw->size < SZ_64K) {
> +		memcpy(lt8713sx->fw_buffer, lt8713sx->fw->data, lt8713sx->fw->size);
> +		lt8713sx->fw_buffer[SZ_64K - 1] =
> +				calculate_crc(lt8713sx->fw->data, lt8713sx->fw->size, SZ_64K - 1);
> +		lt8713sx->main_crc_value = lt8713sx->fw_buffer[SZ_64K - 1];
> +		dev_dbg(lt8713sx->dev,
> +			"Main Firmware Data  Crc=0x%02X\n", lt8713sx->main_crc_value);
> +
> +	} else {
> +		/* main firmware */
> +		memcpy(lt8713sx->fw_buffer, lt8713sx->fw->data, SZ_64K - 1);
> +		lt8713sx->fw_buffer[SZ_64K - 1] =
> +				calculate_crc(lt8713sx->fw_buffer, SZ_64K - 1, SZ_64K - 1);
> +		lt8713sx->main_crc_value = lt8713sx->fw_buffer[SZ_64K - 1];
> +		dev_dbg(lt8713sx->dev,
> +			"Main Firmware Data  Crc=0x%02X\n", lt8713sx->main_crc_value);
> +
> +		/* bank firmware */
> +		memcpy(lt8713sx->fw_buffer + SZ_64K,
> +		       lt8713sx->fw->data + SZ_64K,
> +		       lt8713sx->fw->size - SZ_64K);
> +
> +		lt8713sx->bank_num = (lt8713sx->fw->size - SZ_64K + sz_12k - 1) / sz_12k;
> +		dev_dbg(lt8713sx->dev, "Bank Number Total is %d.\n", lt8713sx->bank_num);
> +
> +		for (int i = 0; i < lt8713sx->bank_num; i++) {
> +			lt8713sx->bank_crc_value[i] =
> +				calculate_crc(lt8713sx->fw_buffer + SZ_64K + i * sz_12k,
> +					      sz_12k, sz_12k);
> +			dev_dbg(lt8713sx->dev, "Bank number:%d; Firmware Data  Crc:0x%02X\n",
> +				i, lt8713sx->bank_crc_value[i]);
> +		}
> +	}
> +	return 0;
> +}
> +
> +static void lt8713sx_config_parameters(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe0ee, 0x01);
> +	regmap_write(lt8713sx->regmap, 0xe05e, 0xc1);
> +	regmap_write(lt8713sx->regmap, 0xe058, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe059, 0x50);
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x10);
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe058, 0x21);
> +}
> +
> +static void lt8713sx_wren(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe103, 0xbf);
> +	regmap_write(lt8713sx->regmap, 0xe103, 0xff);
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x04);
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
> +}
> +
> +static void lt8713sx_wrdi(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x08);
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
> +}
> +
> +static void lt8713sx_fifo_reset(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe103, 0xbf);
> +	regmap_write(lt8713sx->regmap, 0xe103, 0xff);
> +}
> +
> +static void lt8713sx_disable_sram_write(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe055, 0x00);
> +}
> +
> +static void lt8713sx_sram_to_flash(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x30);
> +	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
> +}
> +
> +static void lt8713sx_i2c_to_sram(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe055, 0x80);
> +	regmap_write(lt8713sx->regmap, 0xe05e, 0xc0);
> +	regmap_write(lt8713sx->regmap, 0xe058, 0x21);
> +}
> +
> +static u8 lt8713sx_read_flash_status(struct lt8713sx *lt8713sx)
> +{
> +	u32 flash_status = 0;
> +
> +	regmap_write(lt8713sx->regmap,  0xe103, 0x3f);
> +	regmap_write(lt8713sx->regmap,  0xe103, 0xff);
> +
> +	regmap_write(lt8713sx->regmap,  0xe05e, 0x40);
> +	regmap_write(lt8713sx->regmap,  0xe056, 0x05); /* opcode=read status register */
> +	regmap_write(lt8713sx->regmap,  0xe055, 0x25);
> +	regmap_write(lt8713sx->regmap,  0xe055, 0x01);
> +	regmap_write(lt8713sx->regmap,  0xe058, 0x21);
> +
> +	regmap_read(lt8713sx->regmap, 0xe05f, &flash_status);
> +	dev_dbg(lt8713sx->dev, "flash_status:%x\n", flash_status);
> +
> +	return flash_status;
> +}
> +
> +static void lt8713sx_block_erase(struct lt8713sx *lt8713sx)
> +{
> +	u32 i = 0;
> +	u8 flash_status = 0;
> +	u8 blocknum = 0x00;
> +	u32 flashaddr = 0x00;
> +
> +	for (blocknum = 0; blocknum < 8; blocknum++) {
> +		flashaddr = blocknum * SZ_32K;
> +		regmap_write(lt8713sx->regmap,  0xe0ee, 0x01);

lt8713sx_i2c_enable() ? Why is it set again?

> +		regmap_write(lt8713sx->regmap,  0xe05a, 0x04);
> +		regmap_write(lt8713sx->regmap,  0xe05a, 0x00);
> +		regmap_write(lt8713sx->regmap,  0xe05b, flashaddr >> 16);
> +		regmap_write(lt8713sx->regmap,  0xe05c, flashaddr >> 8);
> +		regmap_write(lt8713sx->regmap,  0xe05d, flashaddr);
> +		regmap_write(lt8713sx->regmap,  0xe05a, 0x01);
> +		regmap_write(lt8713sx->regmap,  0xe05a, 0x00);
> +		msleep(100);
> +		i = 0;
> +		while (1) {
> +			flash_status = lt8713sx_read_flash_status(lt8713sx);
> +			if ((flash_status & 0x01) == 0)
> +				break;
> +
> +			if (i > 50)
> +				break;
> +
> +			i++;
> +			msleep(50);
> +		}
> +	}
> +	dev_dbg(lt8713sx->dev, "erase flash done.\n");
> +}
> +
> +static void lt8713sx_load_main_fw_to_sram(struct lt8713sx *lt8713sx)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe0ee, 0x01);
> +	regmap_write(lt8713sx->regmap, 0xe068, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe069, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe06a, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe065, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe066, 0xff);
> +	regmap_write(lt8713sx->regmap, 0xe067, 0xff);
> +	regmap_write(lt8713sx->regmap, 0xe06b, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe06c, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe060, 0x01);
> +	msleep(200);
> +	regmap_write(lt8713sx->regmap, 0xe060, 0x00);
> +}
> +
> +static void lt8713sx_load_bank_fw_to_sram(struct lt8713sx *lt8713sx, u64 addr)
> +{
> +	regmap_write(lt8713sx->regmap, 0xe0ee, 0x01);
> +	regmap_write(lt8713sx->regmap, 0xe068, ((addr & 0xff0000) >> 16));
> +	regmap_write(lt8713sx->regmap, 0xe069, ((addr & 0x00ff00) >> 8));
> +	regmap_write(lt8713sx->regmap, 0xe06a, (addr & 0x0000ff));
> +	regmap_write(lt8713sx->regmap, 0xe065, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe066, 0x30);
> +	regmap_write(lt8713sx->regmap, 0xe067, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe06b, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe06c, 0x00);
> +	regmap_write(lt8713sx->regmap, 0xe060, 0x01);
> +	msleep(50);
> +	regmap_write(lt8713sx->regmap, 0xe060, 0x00);
> +}
> +
> +static int lt8713sx_write_data(struct lt8713sx *lt8713sx, const u8 *data, u64 filesize)
> +{
> +	int page = 0, num = 0, i = 0, val;
> +
> +	page = (filesize % LT8713SX_PAGE_SIZE) ?
> +			((filesize / LT8713SX_PAGE_SIZE) + 1) : (filesize / LT8713SX_PAGE_SIZE);
> +
> +	dev_dbg(lt8713sx->dev,
> +		"Writing to Sram=%u pages, total size = %llu bytes\n", page, filesize);
> +
> +	for (num = 0; num < page; num++) {
> +		dev_dbg(lt8713sx->dev, "page[%d]\n", num);
> +		lt8713sx_i2c_to_sram(lt8713sx);
> +
> +		for (i = 0; i < LT8713SX_PAGE_SIZE; i++) {
> +			if ((num * LT8713SX_PAGE_SIZE + i) < filesize)
> +				val = *(data + (num * LT8713SX_PAGE_SIZE + i));
> +			else
> +				val = 0xff;
> +			regmap_write(lt8713sx->regmap, 0xe059, val);
> +		}
> +
> +		lt8713sx_wren(lt8713sx);
> +		lt8713sx_sram_to_flash(lt8713sx);
> +	}
> +
> +	lt8713sx_wrdi(lt8713sx);
> +	lt8713sx_disable_sram_write(lt8713sx);
> +
> +	return 0;
> +}
> +
> +static void lt8713sx_main_upgrade_result(struct lt8713sx *lt8713sx)
> +{
> +	u32 main_crc_result;
> +
> +	regmap_read(lt8713sx->regmap, 0xe023, &main_crc_result);
> +
> +	dev_dbg(lt8713sx->dev, "Main CRC HW: 0x%02X\n", main_crc_result);
> +	dev_dbg(lt8713sx->dev, "Main CRC FW: 0x%02X\n", lt8713sx->main_crc_value);
> +
> +	if (main_crc_result == lt8713sx->main_crc_value)
> +		dev_dbg(lt8713sx->dev, "Main Firmware Upgrade Success.\n");
> +	else
> +		dev_err(lt8713sx->dev, "Main Firmware Upgrade Failed.\n");
> +}
> +
> +static void lt8713sx_bank_upgrade_result(struct lt8713sx *lt8713sx, u8 banknum)
> +{
> +	u32 bank_crc_result;
> +
> +	regmap_read(lt8713sx->regmap, 0xe023, &bank_crc_result);
> +
> +	dev_dbg(lt8713sx->dev, "Bank %d CRC Result: 0x%02X\n", banknum, bank_crc_result);
> +
> +	if (bank_crc_result == lt8713sx->bank_crc_value[banknum])
> +		dev_dbg(lt8713sx->dev, "Bank %d Firmware Upgrade Success.\n", banknum);
> +	else
> +		dev_err(lt8713sx->dev, "Bank %d Firmware Upgrade Failed.\n", banknum);
> +}
> +
> +static void lt8713sx_bank_result_check(struct lt8713sx *lt8713sx)
> +{
> +	int i;
> +	u64 addr = 0x010000;
> +
> +	for (i = 0; i < lt8713sx->bank_num; i++) {
> +		lt8713sx_load_bank_fw_to_sram(lt8713sx, addr);
> +		lt8713sx_bank_upgrade_result(lt8713sx, i);
> +		addr += 0x3000;
> +	}
> +}
> +
> +static int lt8713sx_firmware_upgrade(struct lt8713sx *lt8713sx)
> +{
> +	int ret;
> +
> +	lt8713sx_config_parameters(lt8713sx);
> +
> +	lt8713sx_block_erase(lt8713sx);
> +
> +	if (lt8713sx->fw->size < SZ_64K) {
> +		ret = lt8713sx_write_data(lt8713sx, lt8713sx->fw_buffer, SZ_64K);
> +		if (ret < 0) {
> +			dev_err(lt8713sx->dev, "Failed to write firmware data: %d\n", ret);
> +			return ret;
> +		}
> +	} else {
> +		ret = lt8713sx_write_data(lt8713sx, lt8713sx->fw_buffer, lt8713sx->fw->size);
> +		if (ret < 0) {
> +			dev_err(lt8713sx->dev, "Failed to write firmware data: %d\n", ret);
> +			return ret;
> +		}
> +	}
> +	dev_dbg(lt8713sx->dev, "Write Data done.\n");
> +
> +	return 0;
> +}
> +
> +static int lt8713sx_firmware_update(struct lt8713sx *lt8713sx)
> +{
> +	int ret = 0;
> +
> +	mutex_lock(&lt8713sx->ocm_lock);
> +	lt8713sx_i2c_enable(lt8713sx);
> +
> +	ret = lt8713sx_prepare_firmware_data(lt8713sx);
> +	if (ret < 0) {
> +		dev_err(lt8713sx->dev, "Failed to prepare firmware data: %d\n", ret);
> +		goto error;
> +	}
> +
> +	ret = lt8713sx_firmware_upgrade(lt8713sx);
> +	if (ret < 0) {
> +		dev_err(lt8713sx->dev, "Upgrade failure.\n");
> +		goto error;
> +	} else {
> +		/* Validate CRC */
> +		lt8713sx_load_main_fw_to_sram(lt8713sx);
> +		lt8713sx_main_upgrade_result(lt8713sx);
> +		lt8713sx_wrdi(lt8713sx);
> +		lt8713sx_fifo_reset(lt8713sx);
> +		lt8713sx_bank_result_check(lt8713sx);
> +		lt8713sx_wrdi(lt8713sx);
> +	}
> +
> +error:
> +	lt8713sx_i2c_disable(lt8713sx);
> +	if (!ret)
> +		lt8713sx_reset(lt8713sx);
> +
> +	kvfree(lt8713sx->fw_buffer);
> +	lt8713sx->fw_buffer = NULL;
> +
> +	if (lt8713sx->fw) {
> +		release_firmware(lt8713sx->fw);
> +		lt8713sx->fw = NULL;
> +	}
> +	mutex_unlock(&lt8713sx->ocm_lock);
> +
> +	return ret;
> +}
> +
> +static void lt8713sx_reset(struct lt8713sx *lt8713sx)
> +{
> +	dev_dbg(lt8713sx->dev, "reset bridge.\n");
> +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> +	msleep(20);
> +
> +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 0);
> +	msleep(20);
> +
> +	dev_dbg(lt8713sx->dev, "reset done.\n");
> +}
> +
> +static int lt8713sx_regulator_enable(struct lt8713sx *lt8713sx)
> +{
> +	int ret;
> +
> +	ret = devm_regulator_get_enable(lt8713sx->dev, "vdd");
> +	if (ret < 0)
> +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vdd regulator\n");
> +
> +	usleep_range(1000, 10000);
> +
> +	ret = devm_regulator_get_enable(lt8713sx->dev, "vcc");
> +	if (ret < 0)
> +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vcc regulator\n");
> +	return 0;
> +}
> +
> +static int lt8713sx_bridge_attach(struct drm_bridge *bridge,
> +				  struct drm_encoder *encoder,
> +				  enum drm_bridge_attach_flags flags)
> +{
> +	struct lt8713sx *lt8713sx = container_of(bridge, struct lt8713sx, bridge);
> +	int i, ret;
> +
> +	for (i = 0; i < lt8713sx->num_outputs; i++) {
> +		if (!lt8713sx->next_bridge[i])
> +			continue;
> +
> +		ret = drm_bridge_attach(encoder,
> +					lt8713sx->next_bridge[i],
> +					bridge, flags);

This wasn't really tested. This code will not result in what you intend
to do here. Each next bridge should have its own encoder / bridge chain.

> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int lt8713sx_get_ports(struct lt8713sx *lt8713sx)
> +{
> +	struct device *dev = lt8713sx->dev;
> +	struct device_node *port, *ports, *ep, *remote;
> +	int i = 0;
> +	u32 reg;
> +
> +	ports = of_get_child_by_name(dev->of_node, "ports");
> +	if (!ports)
> +		return -ENODEV;
> +
> +	for_each_child_of_node(ports, port) {
> +		if (of_property_read_u32(port, "reg", &reg))
> +			continue;
> +
> +		if (reg == 0)
> +			continue;
> +
> +		if (i >= ARRAY_SIZE(lt8713sx->next_bridge)) {
> +			of_node_put(port);
> +			break;
> +		}
> +
> +		ep = of_graph_get_next_endpoint(port, NULL);
> +		if (!ep)
> +			continue;
> +
> +		remote = of_graph_get_remote_port_parent(ep);
> +		of_node_put(ep);

And this misses the of_device_is_available() check. Please use
drm_of_find_panel_or_bridge().

> +
> +		if (!remote)
> +			continue;
> +
> +		lt8713sx->next_bridge[i] = of_drm_find_bridge(remote);
> +		of_node_put(remote);
> +		if (lt8713sx->next_bridge[i])
> +			i++;

And if not, the driver should be returning -EPROBE_DEFER.

> +	}
> +	lt8713sx->num_outputs = i;
> +	dev_dbg(dev, "Enabled %d output ports", i);
> +
> +	of_node_put(ports);
> +	return 0;
> +};
> +
> +static int lt8713sx_gpio_init(struct lt8713sx *lt8713sx)
> +{
> +	struct device *dev = lt8713sx->dev;
> +
> +	lt8713sx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(lt8713sx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(lt8713sx->reset_gpio),
> +				     "failed to acquire reset gpio\n");
> +
> +	/* power enable gpio */
> +	lt8713sx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> +	if (IS_ERR(lt8713sx->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(lt8713sx->enable_gpio),
> +				     "failed to acquire enable gpio\n");
> +	return 0;
> +}
> +
> +static ssize_t lt8713sx_firmware_store(struct device *dev,
> +				       struct device_attribute *attr,
> +				       const char *buf, size_t len)
> +{
> +	struct lt8713sx *lt8713sx = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = lt8713sx_firmware_update(lt8713sx);
> +	if (ret < 0)
> +		return ret;
> +	return len;
> +}
> +
> +static DEVICE_ATTR_WO(lt8713sx_firmware);
> +
> +static struct attribute *lt8713sx_attrs[] = {
> +	&dev_attr_lt8713sx_firmware.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group lt8713sx_attr_group = {
> +	.attrs = lt8713sx_attrs,
> +};
> +
> +static const struct attribute_group *lt8713sx_attr_groups[] = {
> +	&lt8713sx_attr_group,
> +	NULL,
> +};
> +
> +static const struct drm_bridge_funcs lt8713sx_bridge_funcs = {
> +	.attach = lt8713sx_bridge_attach,
> +};
> +
> +static int lt8713sx_probe(struct i2c_client *client)
> +{
> +	struct lt8713sx *lt8713sx;
> +	struct device *dev = &client->dev;
> +	int ret;
> +
> +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
> +		return dev_err_probe(dev, -ENODEV, "device doesn't support I2C\n");
> +
> +	lt8713sx = devm_drm_bridge_alloc(dev, struct lt8713sx, bridge, &lt8713sx_bridge_funcs);
> +	if (IS_ERR(lt8713sx))
> +		return PTR_ERR(lt8713sx);
> +
> +	lt8713sx->dev = dev;
> +	lt8713sx->client = client;
> +	i2c_set_clientdata(client, lt8713sx);
> +
> +	ret = devm_mutex_init(lt8713sx->dev, &lt8713sx->ocm_lock);
> +	if (ret)
> +		return ret;
> +
> +	lt8713sx->regmap = devm_regmap_init_i2c(client, &lt8713sx_regmap_config);
> +	if (IS_ERR(lt8713sx->regmap))
> +		return dev_err_probe(dev, PTR_ERR(lt8713sx->regmap), "regmap i2c init failed\n");
> +
> +	ret = lt8713sx_get_ports(lt8713sx);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = lt8713sx_gpio_init(lt8713sx);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = lt8713sx_regulator_enable(lt8713sx);
> +	if (ret)
> +		return ret;
> +
> +	lt8713sx_reset(lt8713sx);
> +
> +	lt8713sx->bridge.funcs = &lt8713sx_bridge_funcs;
> +	lt8713sx->bridge.of_node = dev->of_node;
> +	lt8713sx->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
> +	drm_bridge_add(&lt8713sx->bridge);
> +
> +	crc8_populate_msb(lt8713sx_crc_table, 0x31);
> +
> +	return 0;
> +}
> +
> +static void lt8713sx_remove(struct i2c_client *client)
> +{
> +	struct lt8713sx *lt8713sx = i2c_get_clientdata(client);
> +
> +	drm_bridge_remove(&lt8713sx->bridge);
> +}
> +
> +static struct i2c_device_id lt8713sx_id[] = {
> +	{ "lontium,lt8713sx", 0 },
> +	{ /* sentinel */ }
> +};
> +
> +static const struct of_device_id lt8713sx_match_table[] = {
> +	{ .compatible = "lontium,lt8713sx" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, lt8713sx_match_table);
> +
> +static struct i2c_driver lt8713sx_driver = {
> +	.driver = {
> +		.name = "lt8713sx",
> +		.of_match_table = lt8713sx_match_table,
> +		.dev_groups = lt8713sx_attr_groups,
> +	},
> +	.probe = lt8713sx_probe,
> +	.remove = lt8713sx_remove,
> +	.id_table = lt8713sx_id,
> +};
> +
> +module_i2c_driver(lt8713sx_driver);
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("lt8713sx drm bridge driver");
> +MODULE_AUTHOR("Tony <syyang@lontium.com>");
> +MODULE_FIRMWARE(FW_FILE);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

