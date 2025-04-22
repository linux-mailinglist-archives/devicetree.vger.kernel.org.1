Return-Path: <devicetree+bounces-169454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DFDA96E1E
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 16:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C9AD16C31B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 14:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C7227CB3E;
	Tue, 22 Apr 2025 14:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GnDdAjw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C7318CC1C
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 14:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745331373; cv=none; b=BwYyD4KisqWsN/c45tu7udG1oeBQwFx8hMHXEku6GHc+mpeC3EL3HEAWXh5TnTbylplMXgNM8ATnU8AzIP7MMepspVzN/hce6ZFLZr8RMMx9q/bEL7nWAop1BaNKQVruUFPBnZ7Dl80zkxCQ0OzH5rB9SyvjwCxu2KEwjGwFVXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745331373; c=relaxed/simple;
	bh=yi6YJ4FaOw/Owzc3tanwMDOs7L9ZxSiEK08cFEAso4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I1NT2vrG23ST+MRkjOXNbU2WfxmaptFmtJhfJ8axnczL7e1/e1KfH3/KJJ5lGT2YS8S/yNBEHL5HGGg2o7O+mXmRczfDlDzSMQTwz7+qkRQnYMcCC67r9DnObJZrCHUN8BU3iLGmyqz2EsCC6doN8tG+igt8uauQX0r0UKRvcdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GnDdAjw/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53MCIqZX031579
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 14:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LrRr7YL1sUndM+TTzLFwngoOX8HTf8RthpcfqJ5G5gI=; b=GnDdAjw/cw6eQ7mY
	TwZNIklOdPwvghRqJLpGxwMqdBIrR2izJlNUofl9o0E+bDSPM+fx098ZfNShxrUj
	hL7ZKXkkVGymfkaimE3jmfC1CjfZRAl6Y9ShMHnMlb3kaj2+c9TrN7If4/72J+WU
	cTgHTeCPJrIDQ7NpnTVkG0bq7MUDYzd1k00tex9r2gkXjA7E7j+u92ZY2/Gjv+TW
	TnQZts+KZ7MQ9I3m4wOMBW0n1cveWHZWc2kL9+SDGbZbJzCIsLVQoRNUOyXLuzcX
	BIW1nwTtiZqX6XbQZ8jGW4aPhs8GxZP6iA6Zk+txdPCOVIn0iGOCAMRV7sLt7iXX
	W+xrzw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4641hhqxev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 14:16:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c3c8f8ab79so792700685a.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 07:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745331369; x=1745936169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LrRr7YL1sUndM+TTzLFwngoOX8HTf8RthpcfqJ5G5gI=;
        b=KZx/qSUA6h6ufJSGQkzzJnIxDchb5jjqE/w8naxhnLZ7SARG4hIn5cALZt4lZVz5xr
         4oS3uwAKKej8VhQroYdAmC1Y+EzgXJxP7c2hwDyAk6GvqZZZe6tTG45GI6k5znF4o9FS
         nuWwP4k/4WC8CvK462CX9YsTYtYiDqiU2gyJqJ6wHPqP4oJTAG+5sPfTFpglZ1Ww4pPf
         /gsOQSteWGNLPnQaAD3PLt+XR56KJL68bYF6Bn/IdIR4N04hR29mQ/Ufur1SrFD/2Yqa
         5LgTLE7KhVwFcnAS1ilTB++rSB2CQQbaFgeZ3CxUXY7Z6T9BvUSkm6E3vpINIiQx6EfT
         M0oA==
X-Forwarded-Encrypted: i=1; AJvYcCU12Wgu8WivYHGWRJTgZJLtiQGhvfj4rPFSVCdAIa1CMm38XWWmEFfXdfHtGwsCqYh40eVD4c24PeIW@vger.kernel.org
X-Gm-Message-State: AOJu0YzDKG8RupkO1Nmh4SMv4zi2XitJIs4EOGCB0zI2mt3bGACt05zU
	hOpPFAR5RmkTPr5lyg5xzm09/wAGJHrLfox4onyuCA7lT0xWMo61ZSIVdbzNvxSo7d0k0Q8NzEi
	dtmBgPFcAs2Hfk8XDbBP3l37453lmW9bNQnTb1JsxJP5vPEkwnBCBGdLdbkBDlZbi+BV1
X-Gm-Gg: ASbGncuI/kdn9jeDD0vI70zegD/DUJFNk8C73a1NgWj2o1Es29/6vfkpgU9ARFh6u4k
	WrNFZPpI/2UYRtjsUEWupH1HEqBwCqmIoeO3fryfhfedkbkJfHXusmmfntbntvH2dAh/l/JqXzQ
	8FW3OziwqUHMFG/QxQbCDE2p6TPiS4kwrnxTyqbokEDKPBCC9K6XWadqdGPevRrUTvdSlLdnB3M
	Y7/AnSzqMVbDeX5+OfrEBk2NKeNAQPeqjDPZDGKvw4cQiqk/PgXlU+Oc91HJH9AaSJWZOKR6Or6
	PGc3gl6Vrr/devC9Zh/knpwSzy2+g3Qpb+/bX6wsveKBj1X+pRE7Y8sqKXDcpGVEAZDPchguaSo
	hl0+TACwDGn+Pu9jhS2SKGzXGz/s8bEO2KCmoUhP66kYKpSECkcfNc9EAO8RReBEs
X-Received: by 2002:a05:620a:c47:b0:7c5:e283:7d0a with SMTP id af79cd13be357-7c927fbadb7mr2561269285a.30.1745331368668;
        Tue, 22 Apr 2025 07:16:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDu9Iz7z///DAle0/e2e4SOfXHkkui6Bh/b7f9Hsaifq8Tlj+3UCpT/UhvhwXTsV/jqxc4wQ==
X-Received: by 2002:a05:620a:c47:b0:7c5:e283:7d0a with SMTP id af79cd13be357-7c927fbadb7mr2561262885a.30.1745331368147;
        Tue, 22 Apr 2025 07:16:08 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a2:9556:dcef:1cfc:fd87:3323? (2001-14bb-a2-9556-dcef-1cfc-fd87-3323.rev.dnainternet.fi. [2001:14bb:a2:9556:dcef:1cfc:fd87:3323])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5247c9sm1215361e87.5.2025.04.22.07.16.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 07:16:07 -0700 (PDT)
Message-ID: <14df4b1c-0a43-45e6-83c5-4c450615d901@oss.qualcomm.com>
Date: Tue, 22 Apr 2025 17:16:05 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 22/23] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com, ck.hu@mediatek.com,
        jitao.shi@mediatek.com, jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
        dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
        dmitry.baryshkov@linaro.org, lewis.liao@mediatek.com,
        ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
        jason-jh.lin@mediatek.com
References: <20250415104321.51149-1-angelogioacchino.delregno@collabora.com>
 <20250415104321.51149-23-angelogioacchino.delregno@collabora.com>
 <aestmu2rblcrcz77tuqgkimaj4stg24skyp2avdstahwr3aa3i@cfv5ov2qjcf6>
 <7b3713d1-df18-4da1-a1e2-16dcff08fe66@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <7b3713d1-df18-4da1-a1e2-16dcff08fe66@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Fe43xI+6 c=1 sm=1 tr=0 ts=6807a4aa cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=mpaa-ttXAAAA:8 a=QX4gbG5DAAAA:8 a=iyFSFCpoZHukXat7EuUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: m2rPqAqE1Py9ErWtR9es2JcYfbAHhEPj
X-Proofpoint-ORIG-GUID: m2rPqAqE1Py9ErWtR9es2JcYfbAHhEPj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-22_07,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=942 mlxscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504220108

On 22/04/2025 16:53, AngeloGioacchino Del Regno wrote:
> Il 21/04/25 21:16, Dmitry Baryshkov ha scritto:
>> On Tue, Apr 15, 2025 at 12:43:20PM +0200, AngeloGioacchino Del Regno 
>> wrote:
>>> Add support for the newer HDMI-TX (Encoder) v2 and DDC v2 IPs
>>> found in MediaTek's MT8195, MT8188 SoC and their variants, and
>>> including support for display modes up to 4k60 and for HDMI
>>> Audio, as per the HDMI 2.0 spec.
>>>
>>> HDCP and CEC functionalities are also supported by this hardware,
>>> but are not included in this commit and that also poses a slight
>>> difference between the V2 and V1 controllers in how they handle
>>> Hotplug Detection (HPD).
>>>
>>> While the v1 controller was using the CEC controller to check
>>> HDMI cable connection and disconnection, in this driver the v2
>>> one does not.
>>>
>>> This is due to the fact that on parts with v2 designs, like the
>>> MT8195 SoC, there is one CEC controller shared between the HDMI
>>> Transmitter (HDMI-TX) and Receiver (HDMI-RX): before eventually
>>> adding support to use the CEC HW to wake up the HDMI controllers
>>> it is necessary to have support for one TX, one RX *and* for both
>>> at the same time.
>>>
>>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>>> Signed-off-by: AngeloGioacchino Del Regno 
>>> <angelogioacchino.delregno@collabora.com>
>>> ---
>>>   drivers/gpu/drm/mediatek/Kconfig            |    7 +
>>>   drivers/gpu/drm/mediatek/Makefile           |    2 +
>>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.c  |    4 +
>>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.h  |    9 +
>>>   drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c  |  385 +++++
>>>   drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h |  263 ++++
>>>   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c      | 1396 +++++++++++++++++++
>>>   7 files changed, 2066 insertions(+)
>>>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c
>>>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
>>>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
>>>
>>> +
>>> +static int mtk_hdmi_v2_setup_audio_infoframe(struct mtk_hdmi *hdmi)
>>> +{
>>> +    struct hdmi_codec_params *params = &hdmi->aud_param.codec_params;
>>> +    struct hdmi_audio_infoframe frame;
>>> +    u8 buffer[14];
>>> +    ssize_t ret;
>>> +
>>> +    memcpy(&frame, &params->cea, sizeof(frame));
>>> +
>>> +    ret = hdmi_audio_infoframe_pack(&frame, buffer, sizeof(buffer));
>>> +    if (ret < 0)
>>> +        return ret;
>>
>> This should really be done via
>> drm_atomic_helper_connector_hdmi_update_audio_infoframe() or
>> drm_atomic_helper_connector_hdmi_clear_audio_infoframe().
>>
>> Ideally this should come from the .hw_params() / .prepare() calls so
>> that you don't need to store the params in the driver data.
>>
> 
> When switching to the new hdmi audio helpers yes, but I was planning to 
> do that
> later.....
> 
>>> +
>>> +    mtk_hdmi_v2_hw_write_audio_infoframe(hdmi, buffer);
>>> +
>>> +    return 0;
>>> +}
>>> +
>>> +static inline void mtk_hdmi_v2_hw_gcp_avmute(struct mtk_hdmi *hdmi, 
>>> bool mute)
>>> +{
>>> +    u32 val;
>>> +
>>> +    regmap_read(hdmi->regs, TOP_CFG01, &val);
>>> +    val &= ~(CP_CLR_MUTE_EN | CP_SET_MUTE_EN);
>>> +
>>> +    if (mute) {
>>> +        val |= CP_SET_MUTE_EN;
>>> +        val &= ~CP_CLR_MUTE_EN;
>>> +    } else {
>>> +        val |= CP_CLR_MUTE_EN;
>>> +        val &= ~CP_SET_MUTE_EN;
>>> +    }
>>> +    regmap_write(hdmi->regs, TOP_CFG01, val);
>>> +
>>> +    regmap_set_bits(hdmi->regs, TOP_INFO_RPT, CP_RPT_EN);
>>> +    regmap_set_bits(hdmi->regs, TOP_INFO_EN, CP_EN | CP_EN_WR);
>>> +}
>>> +
>>> +static void mtk_hdmi_v2_hw_ncts_enable(struct mtk_hdmi *hdmi, bool 
>>> enable)
>>> +{
>>> +    if (enable)
>>> +        regmap_set_bits(hdmi->regs, AIP_CTRL, CTS_SW_SEL);
>>> +    else
>>> +        regmap_clear_bits(hdmi->regs, AIP_CTRL, CTS_SW_SEL);
>>> +}
>>> +
>>> +static void mtk_hdmi_v2_hw_aud_set_channel_status(struct mtk_hdmi 
>>> *hdmi)
>>> +{
>>> +    u8 *ch_status = hdmi->aud_param.codec_params.iec.status;
>>> +
>>> +    /* Only the first 5 to 7 bytes of Channel Status contain useful 
>>> information */
>>> +    regmap_write(hdmi->regs, AIP_I2S_CHST0, 
>>> mtk_hdmi_v2_format_hw_packet(&ch_status[0], 4));
>>> +    regmap_write(hdmi->regs, AIP_I2S_CHST1, 
>>> mtk_hdmi_v2_format_hw_packet(&ch_status[4], 3));
>>> +}
>>> +
>>> +static void mtk_hdmi_v2_hw_aud_set_ncts(struct mtk_hdmi *hdmi,
>>> +                     unsigned int sample_rate,
>>> +                     unsigned int clock)
>>> +{
>>> +    unsigned int n, cts;
>>> +
>>> +    mtk_hdmi_get_ncts(sample_rate, clock, &n, &cts);
>>
>> drm_hdmi_acr_get_n_cts() ?
>>
> 
> I'd have to update both HDMI drivers to use that instead, and I was 
> planning to do
> that at a later time when switching to the HDMI audio helpers.
> 
>>> +
>>> +    regmap_write(hdmi->regs, AIP_N_VAL, n);
>>> +    regmap_write(hdmi->regs, AIP_CTS_SVAL, cts);
>>> +}
>>> +
>>
>> [...]
>>
>>> +
>>> +static int mtk_hdmi_v2_audio_hw_params(struct device *dev, void *data,
>>> +                       struct hdmi_codec_daifmt *daifmt,
>>> +                       struct hdmi_codec_params *params)
>>> +{
>>> +    struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
>>> +
>>> +    if (hdmi->audio_enable) {
>>> +        mtk_hdmi_audio_params(hdmi, daifmt, params);
>>> +        mtk_hdmi_v2_aud_output_config(hdmi, &hdmi->mode);
>>> +    }
>>> +    return 0;
>>> +}
>>> +
>>> +static int mtk_hdmi_v2_audio_startup(struct device *dev, void *data)
>>> +{
>>> +    struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
>>> +
>>> +    mtk_hdmi_v2_hw_aud_enable(hdmi, true);
>>> +    hdmi->audio_enable = true;
>>> +
>>> +    return 0;
>>> +}
>>> +
>>> +static void mtk_hdmi_v2_audio_shutdown(struct device *dev, void *data)
>>> +{
>>> +    struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
>>> +
>>> +    hdmi->audio_enable = false;
>>> +    mtk_hdmi_v2_hw_aud_enable(hdmi, false);
>>
>> Most likely you need to stop sending the AUDIO packet too. Or is it dome
>> by the hardware?
>>
> 
> The call to `mtk_hdmi_v2_hw_aud_enable(hdmi, false)` will set HW 
> registers to both
> mute and stop sending the audio packet.
> 
>>> +}
>>> +
>>> +static int mtk_hdmi_v2_audio_mute(struct device *dev, void *data, 
>>> bool enable, int dir)
>>> +{
>>> +    struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
>>> +
>>> +    mtk_hdmi_v2_hw_aud_mute(hdmi, enable);
>>> +
>>> +    return 0;
>>> +}
>>> +
>>> +static const struct hdmi_codec_ops mtk_hdmi_v2_audio_codec_ops = {
>>> +    .hw_params = mtk_hdmi_v2_audio_hw_params,
>>> +    .audio_startup = mtk_hdmi_v2_audio_startup,
>>> +    .audio_shutdown = mtk_hdmi_v2_audio_shutdown,
>>> +    .mute_stream = mtk_hdmi_v2_audio_mute,
>>> +    .get_eld = mtk_hdmi_audio_get_eld,
>>> +    .hook_plugged_cb = mtk_hdmi_v2_audio_hook_plugged_cb,
>>> +};
>>
>> Do you plan to switch to the OP_HDMI_AUDIO? I'd really like to see
>> bridges use the framework instead of implementing everthing on their
>> own.
>>
> 
> I do, but since I've already reached v9, I really don't want to do that 
> right now
> and delay this driver for another two months.
> 
> I plan to do the switch after we at least get this in: as the V1 driver 
> would also
> need the same cleanup, I may even find a way to throw more stuff in the 
> hdmi_common
> when cleaning up both at the same time.


Ack.

-- 
With best wishes
Dmitry

