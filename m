Return-Path: <devicetree+bounces-275602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLrNHlzDtGnxsgAAu9opvQ
	(envelope-from <devicetree+bounces-275602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:09:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D22DD28B5A2
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C8303091087
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2462E1722;
	Sat, 14 Mar 2026 02:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SzUwUq4j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JajLlpyt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626081BF33
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773454166; cv=none; b=FQNTzEwvAfr/S9/Xf9IIvc1nTg5TVn1V7+DrmIVoZBz1V7yX6Tapb7rkZUlCaKGNdTBBgE7Li/waEWKuA4BVnp/oaimbjZB8r5zjYMtBrQ42yiE8gbCGodaPVNWGqt/vTMg/BmgESIvU6UwlLiqE9cvPVawVTTfHYsbZHsKLPyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773454166; c=relaxed/simple;
	bh=biHU+6u0atUV7n9mH66+DBaTW3i+Rv5IwUpkR9AapZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IfZYWwlmVY39goLdZywpRjAqeFrzPSt9gSJ3kMOCWJ7DbJuEE2yqSf2Qpe+lwzzUdyWXl0HWfmjuLAocBguNCabMbkYCv+j9ZOTkRltMaDGB6x2c/MxGsBxZjPWcq2kjRbIceIIHKmHEd8nJNA2RAn1MxMy3mm4Fdjp3f4GHpng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SzUwUq4j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JajLlpyt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E29GDd2262758
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VZ5xCZozSds6Q5Xhjoprbzeb
	kPUoMAhLb2YC4bcxkYA=; b=SzUwUq4jxKlsXUqGdDMYKJFBupPFZ0eY0cYUbi0s
	+gJ5sva51vB6s79Ai+8GLLYI1B2l025Y1d8z0gzI+/uqk/pkMXs6Ij7XaT467570
	8JGSGfX+t153XiLglRl77kfek7mQ+B/jr1vCb8WA1ZIzDpyVwtlfeofwgQG4mK4v
	lOzas3ODzwxa2npQiuQKFvZPdGQqbkQpma58X9gGxzvsZFeDmEei23KNKkGjdbKN
	A0eif3/899XniGiXAK4eXXKwwoBqJEkQYP3OVnavuTwSx1WLrtFJ/2R2WRMe7oIQ
	qSOG/y9kN1KI3h7bVqNADXVD2qvhqv6lgOGbs1N4dVp0Qw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4u7ug-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:09:22 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5ffbf6d209aso20449136137.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773454162; x=1774058962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VZ5xCZozSds6Q5XhjoprbzebkPUoMAhLb2YC4bcxkYA=;
        b=JajLlpytKvtP7KLolAOsxdImrs5/nsC8nVm/5GOkpmadzlVjkD57NHt/+YEkFB3vnc
         4pvrDkU73YffJBnl2YDKcWWzsGZ6+47eEPNNoNq4WTSdp0zdj6tbBPh9dojKd0VT0eZF
         wtBUeMoxPhnSI6lzKlMuh6FqI8GMh94nHZllOoq0CGPZIaJ+9F5wzXxKlLbrB3ikp16z
         LJaCTpEsPACpVImGWWI4frkLyN+F26tvhhJN+LMwM7/J8uRgfFOqwKEXDAfMWsytoH5+
         Bv9MEJnCymEGjL9e4XR9FS4+broiMWCKtzmcpRqyvwsXZncuHY6aWDICWvQ4lfPhG2eW
         kTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773454162; x=1774058962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VZ5xCZozSds6Q5XhjoprbzebkPUoMAhLb2YC4bcxkYA=;
        b=UnQPhq2GRuzTllp0vs1xMzIA6f3xG1th24bzpR6H+IOqnYwy3lLf/ipMdtKKp1G+zm
         FHNHVJp/GXbFDtO/JvFBNIg+u45pEo+MEnkWw/j6UpEIWjav+lGr/UQc4ClvUe+PWs3N
         3K7mXoU3nxg0csFORTlhmU3/VB9Iergx3j4k7sGMNQ9TaJm1JgHrgAvlPGAyOQrqk5gs
         8oQHtlBzr84Wy0X/r9qQJdLt5sCAscIKY3qPtrsUdL0wEwlqo/a3O2JMXhOfAa/HqZpd
         dOktxtELfTLlAR9hCP2zl2xTUKJKC86XJVAqNRXiFglhfmXxbt8vigf2VW2sQPelDqHR
         Ib/A==
X-Forwarded-Encrypted: i=1; AJvYcCVetEudqrgmgZqZZ1aqzmPxa2DYQv28H1ZH6pOYF1NQZ6cdRhbxqQJh1713yQkrYs7cqtXG4qCGERpL@vger.kernel.org
X-Gm-Message-State: AOJu0YxdJy0co/8f6mEPlIdH0hwthczk+CwMGDkz3pPRyFyeWQGtK7Qz
	Z7AlyA0SUQ7Qx5tkPQt1DhtH9MNYDhc76WELW2+MyKrEzK3T5Nsl2+Ckv16Kzq1esDZO/E/KYMO
	7fRHempMydUM0Yv57bVcFiGLBr4lvOa7mQXr4gMUjmmpo6VTV93yBdSoi+yeZDNGK
X-Gm-Gg: ATEYQzxuKYW1YKDZb+5Af3fRSI3OqWgSpBU+v6XU9sijph/N86/ti7rOpsN6vVGlPNC
	6M/kr0hZOEPa8sXuzbzKOgLD0vAU0vbQCrdt92q9i+XW5xJnDylQkRoDU9dy+gtwMKGcWc0JXos
	ljLrlWAPZc9+ugB1f/m8Mg4St+14/QPt1XyOgTOMfi6BY2WPPsoEQV1YWUFQeI4ZbMlaW1yUXj6
	IPIy7OMQEeHJ+hmBG2+OOILBU3SyXm55nZ4zisaUy29e+sGlurKY4M7KWDLz0X6cj/U1oFGJOLD
	8N+i+Baf4523rtbJwNiDnkYuyguS8jzVE/RTDKyng1VX/cD2/glaHhA5HT/S+5RuB+uMDa8C1Mn
	/Pwf4vr7JIJ83OCcRl2U4v0uz8adXueqWxh1xb1I6YAzcVK5H9W3zwFXnGTlrptvN5RrCcsBxEz
	DSVTYOCmt1QcoRF0YEzUckDXIXhI5A2Lm9N6U=
X-Received: by 2002:a05:6102:1606:b0:5ff:24b4:8992 with SMTP id ada2fe7eead31-6020e6f1993mr2461597137.4.1773454161607;
        Fri, 13 Mar 2026 19:09:21 -0700 (PDT)
X-Received: by 2002:a05:6102:1606:b0:5ff:24b4:8992 with SMTP id ada2fe7eead31-6020e6f1993mr2461588137.4.1773454161119;
        Fri, 13 Mar 2026 19:09:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e7dfb3sm17721491fa.45.2026.03.13.19.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:09:18 -0700 (PDT)
Date: Sat, 14 Mar 2026 04:09:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hermes.wu@ite.com.tw
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw,
        Kenneth.Hung@ite.com.tw, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] drm/bridge: Add ITE IT6162 MIPI DSI to HDMI
 bridge driver
Message-ID: <i44ock4tspw2244xuagj554d3giko2ck47smcic42glwrxwc2r@s4uj5w6xagtb>
References: <20260313-upstream-6162-v3-0-8497fb7c4406@ite.com.tw>
 <20260313-upstream-6162-v3-2-8497fb7c4406@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-upstream-6162-v3-2-8497fb7c4406@ite.com.tw>
X-Proofpoint-ORIG-GUID: fi1dthLa4BJldhySJrfxC4aowSJOGrW9
X-Proofpoint-GUID: fi1dthLa4BJldhySJrfxC4aowSJOGrW9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAxNCBTYWx0ZWRfX1jm0b9NbgRaW
 3QobOOdntmyBUP1XewcpsUhl2bM0g2QsRSkSk9O+ADjPzNahbua4Ky5DIG3Z9+jAq4u2UE6O42R
 JlOMDZDZpxAxmzwhAVMMfJpWKfTUkDgcqiZuxSsHhd5YdxPRxZHxKnFIgYfJY/Nhy4OpC+2w7Wr
 jItga7L6ZHsJCZiq1AabaaGAf704T0Ui1WhVmdzWDWPm/u+adFUsKLnqzOVs1z4GKDeKKluLa4F
 u5t/LaIkQncIbIgcl0hsI1q2ENvVCRQjQMQRqRM0xCVRLc1Wvk8pLjfzP+NwCheIOJDebW9SGGy
 RD7WyUdcWewGv6Oew1U2LxoYNWKkYGLZMDJT7T2uSxrUxq+4hM4VaVuyERTc2lrh8EtjYYQVfmw
 c8xKm3lXy/DZnw5Pu0wo2p1wYmDdEZzm22I7uNtMVpMBjZlKlOxkZMZBPUN9WuT+BbrfVl68jBW
 7Gi+Nky2/XlO5RYC5xw==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b4c352 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=Ns9eNvu6AAAA:8
 a=atlYu2UPsJZCyq0FItkA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
 a=LZLx1i01EnjtqRv10NxV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140014
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275602-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D22DD28B5A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:16:01PM +0800, Hermes Wu via B4 Relay wrote:
> From: Hermes Wu <Hermes.wu@ite.com.tw>
> 
> Add support for the ITE IT6162 MIPI DSI to HDMI 2.0 bridge chip.
> The IT6162 is an I2C-controlled bridge that supports the following
> configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The driver implements the DRM bridge and connector frameworks,
> including mode setting, EDID retrieval, and HPD support.
> 
> Also add a MAINTAINERS entry for the newly introduced ITE IT6162 MIPI DSI
> to HDMI bridge driver, covering the driver source file and the
> device tree binding document.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
> Changes in v3:
>   * Fix OFFSET_VERSION_H register offset from 0x03 to 0x05
>   * Add MIPI_PORT_EN_MASK macro combining MIPI_PORT1_EN_MASK and MIPI_PORT0_EN_MASK
>   * Rename HDCP enums: NO_HDCP -> HDCP_DISABLE, NO_HDCP_STATE -> HDCP_STATE_IDLE,
>     AUTH_DONE -> HDCP_STATE_AUTH_DONE, AUTH_FAIL -> HDCP_STATE_AUTH_FAIL
>   * Rename it6162_infoblock_complete() to it6162_wait_command_complete()
>   * Rename it6162_infoblock_host_set() to it6162_infoblock_trigger()
>   * Remove it6162_infoblock_mipi_config() and it6162_infoblock_write_msg()
>     wrappers, inline into it6162_reset_init() and
>     it6162_mipi_set_video_timing() respectively
>   * Remove it6162_set_default_config() wrapper, inline into
>     it6162_reset_init()
>   * Fix typo: hdcp_encyption -> hdcp_encryption
>   * Fix typo: it6162_hdcp_read_infomation -> it6162_hdcp_read_information
>   * Remove dev_err_probe() usage outside of probe path
>   * Remove verbose success-path dev_info/dev_dbg logging throughout
>   * Replace __func__ usage in error messages with descriptive strings
>   * Fix double error printing in probe for it6162_init_pdata failure path
>   * Fix uninitialized variable warning: initialize cp_status to
>     DRM_MODE_CONTENT_PROTECTION_DESIRED at declaration; move
>     drm_hdcp_update_content_protection() inside the state-change block
>   * Fix audio sample width mapping: case 20 now maps to WORD_LENGTH_20BIT,
>     case 24 to WORD_LENGTH_24BIT
>   * Remove stray drm_dbg("it6162_bridge_atomic_disable") call
>   * Remove drm_dbg() calls from it6162_display_mode_to_settings()
>   * Drop unused struct it6162 * parameter from it6162_avi_to_video_setting()
>     and it6162_display_mode_to_settings()
>   * Fold it6162_set_default_config() body directly into it6162_reset_init(),
>     removing the wrapper
>   * Fix it6162_infoblock_request_data(): split command complete polling and
>     buffer status check into two steps; use wait_event_timeout() for
>     data_buf_sts since it is updated asynchronously by the interrupt
>     handler; add wait_queue_head_t data_buf_wait to struct it6162 and
>     wake_up() in interrupt handler
> ---
>  MAINTAINERS                         |    7 +
>  drivers/gpu/drm/bridge/Kconfig      |   17 +
>  drivers/gpu/drm/bridge/Makefile     |    1 +
>  drivers/gpu/drm/bridge/ite-it6162.c | 1631 +++++++++++++++++++++++++++++++++++
>  4 files changed, 1656 insertions(+)
> 
> +
> +static int it6162_bridge_hdmi_audio_prepare(struct drm_bridge *bridge,
> +					    struct drm_connector *connector,
> +					    struct hdmi_codec_daifmt *fmt,
> +					    struct hdmi_codec_params *params)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +	struct it6162_audio config;
> +
> +	it6162_audio_update_hw_params(it6162, &config, fmt, params);
> +	it6162_enable_audio(it6162, &config);

You write the intermediate structure, use it and then forget it
immediately. Can it be removed completely?

> +	return drm_atomic_helper_connector_hdmi_update_audio_infoframe(connector,
> +								       &params->cea);
> +}
> +
> +static int it6162_bridge_hdmi_audio_startup(struct drm_bridge *bridge,
> +					    struct drm_connector *connector)
> +{
> +	return 0;
> +}

This is not necessary and can be dropped.

> +
> +static void it6162_bridge_hdmi_audio_shutdown(struct drm_bridge *bridge,
> +					      struct drm_connector *connector)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);

drm_atomic_helper_connector_hdmi_clear_audio_infoframe() here.

> +
> +	it6162_disable_audio(it6162);
> +}
> +
> +static enum drm_mode_status
> +it6162_hdmi_tmds_char_rate_valid(const struct drm_bridge *bridge,
> +				 const struct drm_display_mode *mode,
> +				 unsigned long long tmds_rate)
> +{
> +	/*IT6162 hdmi supports HDMI2.0 600Mhz*/
> +	if (tmds_rate > 600000000)
> +		return MODE_CLOCK_HIGH;
> +
> +	return MODE_OK;
> +}
> +
> +static inline int
> +it6162_write_infoframe(struct it6162 *it6162, const u8 *buffer, size_t len)
> +{
> +	if (len > DATA_BUFFER_DEPTH)
> +		return -EINVAL;
> +
> +	regmap_bulk_write(it6162->regmap, OFFSET_DATA_BUFFER, buffer, len);
> +	regmap_write(it6162->regmap, OFFSET_DATA_TYPE_IDX, len);
> +	it6162_infoblock_trigger(it6162, HOST_SET_CEA_INFOFRAME);

Does the hardware automatically identify, which infoframe is it?

> +	return 0;
> +}
> +
> +static inline int it6162_clear_infoframe(struct it6162 *it6162, u8 type)
> +{
> +	regmap_write(it6162->regmap, OFFSET_DATA_TYPE_IDX, 3);
> +	regmap_write(it6162->regmap, OFFSET_DATA_BUFFER, type);
> +	regmap_write(it6162->regmap, OFFSET_DATA_BUFFER + 1, 0x00);
> +	regmap_write(it6162->regmap, OFFSET_DATA_BUFFER + 2, 0x00);
> +	it6162_infoblock_trigger(it6162, HOST_SET_CEA_INFOFRAME);
> +	return 0;
> +}
> +
> +static int
> +it6162_bridge_hdmi_write_avi_infoframe(struct drm_bridge *bridge,
> +				       const u8 *buffer, size_t len)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_write_infoframe(it6162, buffer, len);
> +}
> +
> +static int
> +it6162_bridge_hdmi_clear_avi_infoframe(struct drm_bridge *bridge)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_clear_infoframe(it6162, HDMI_INFOFRAME_TYPE_AVI);
> +}
> +
> +static int
> +it6162_bridge_hdmi_write_audio_infoframe(struct drm_bridge *bridge,
> +					 const u8 *buffer, size_t len)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_write_infoframe(it6162, buffer, len);
> +}
> +
> +static int
> +it6162_bridge_hdmi_clear_audio_infoframe(struct drm_bridge *bridge)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_clear_infoframe(it6162, HDMI_INFOFRAME_TYPE_AUDIO);
> +}
> +
> +static int
> +it6162_bridge_hdmi_write_spd_infoframe(struct drm_bridge *bridge,
> +				       const u8 *buffer, size_t len)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_write_infoframe(it6162, buffer, len);
> +}
> +
> +static int
> +it6162_bridge_hdmi_clear_spd_infoframe(struct drm_bridge *bridge)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_clear_infoframe(it6162, HDMI_INFOFRAME_TYPE_SPD);
> +}
> +
> +static const struct drm_bridge_funcs it6162_bridge_funcs = {
> +	.attach = it6162_bridge_attach,
> +	.mode_valid = it6162_bridge_mode_valid,
> +	.detect = it6162_bridge_detect,
> +
> +	.atomic_enable = it6162_bridge_atomic_enable,
> +	.atomic_disable = it6162_bridge_atomic_disable,
> +	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset = drm_atomic_helper_bridge_reset,
> +	.atomic_check = it6162_bridge_atomic_check,
> +
> +	.edid_read = it6162_bridge_read_edid,
> +
> +	.hdmi_clear_avi_infoframe = it6162_bridge_hdmi_clear_avi_infoframe,
> +	.hdmi_write_avi_infoframe = it6162_bridge_hdmi_write_avi_infoframe,
> +	.hdmi_clear_spd_infoframe = it6162_bridge_hdmi_clear_spd_infoframe,
> +	.hdmi_write_spd_infoframe = it6162_bridge_hdmi_write_spd_infoframe,
> +	.hdmi_clear_audio_infoframe = it6162_bridge_hdmi_clear_audio_infoframe,
> +	.hdmi_write_audio_infoframe = it6162_bridge_hdmi_write_audio_infoframe,

No HDMI Infoframes support? That's really sad.

> +
> +	.hdmi_tmds_char_rate_valid = it6162_hdmi_tmds_char_rate_valid,
> +	.hdmi_audio_prepare = it6162_bridge_hdmi_audio_prepare,
> +	.hdmi_audio_startup = it6162_bridge_hdmi_audio_startup,
> +	.hdmi_audio_shutdown = it6162_bridge_hdmi_audio_shutdown,
> +};
> +
> +static int it6162_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct device_node *np = dev->of_node;
> +	struct it6162 *it6162;
> +	int ret;
> +
> +	it6162 = devm_drm_bridge_alloc(dev, struct it6162, bridge,
> +				       &it6162_bridge_funcs);
> +	if (IS_ERR(it6162))
> +		return PTR_ERR(it6162);
> +
> +	it6162->dev = dev;
> +
> +	ret = it6162_of_get_dsi_host(it6162);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = it6162_i2c_regmap_init(client, it6162);
> +	if (ret != 0)
> +		return ret;
> +
> +	ret = it6162_init_pdata(it6162);
> +	if (ret)
> +		return ret;
> +
> +	it6162_config_default(it6162);
> +	it6162_parse_dt(it6162);
> +
> +	if (it6162_detect_devices(it6162) < 0)
> +		return -ENODEV;
> +
> +	if (!client->irq) {
> +		dev_err(dev, "Failed to get INTP IRQ");
> +		return -ENODEV;
> +	}
> +
> +	ret = devm_request_threaded_irq(&client->dev, client->irq, NULL,
> +					it6162_int_threaded_handler,
> +					IRQF_TRIGGER_LOW | IRQF_ONESHOT |
> +					IRQF_NO_AUTOEN,
> +					"it6162-intp", it6162);
> +	if (ret)
> +		return ret;
> +
> +	INIT_DELAYED_WORK(&it6162->hdcp_work, it6162_hdcp_work);
> +	init_waitqueue_head(&it6162->data_buf_wait);
> +
> +	mutex_init(&it6162->lock);
> +
> +	it6162->bridge.of_node = np;
> +	it6162->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID |
> +			     DRM_BRIDGE_OP_MODES;
> +
> +	it6162->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
> +
> +	it6162->bridge.vendor = "ITE";
> +	it6162->bridge.product = "IT6162";

You missed to specify DRM_BRIDGE_OP_HDMI, so all HDMI callbacks will be
ignored.

> +
> +	if (it6162_of_get_audio(it6162)) {
> +		it6162->bridge.ops |= DRM_BRIDGE_OP_HDMI_AUDIO;
> +		it6162->bridge.hdmi_audio_dev = dev;
> +		it6162->bridge.hdmi_audio_max_i2s_playback_channels = 8;
> +		it6162->bridge.hdmi_audio_dai_port = 2;
> +	}
> +
> +	devm_drm_bridge_add(dev, &it6162->bridge);
> +
> +	return it6162_attach_dsi(it6162);
> +}
> +
> +static void it6162_remove(struct i2c_client *client)
> +{
> +	struct it6162 *it6162 = i2c_get_clientdata(client);
> +
> +	disable_irq(client->irq);
> +	cancel_delayed_work_sync(&it6162->hdcp_work);
> +	mutex_destroy(&it6162->lock);
> +}
> +
> +static const struct it6162_chip_info it6162_chip_info = {
> +	.chip_id = 0x616200,
> +	.version = 0x006500,
> +};
> +
> +static const struct of_device_id it6162_dt_ids[] = {
> +	{ .compatible = "ite,it6162", .data = &it6162_chip_info},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, it6162_dt_ids);
> +
> +static const struct i2c_device_id it6162_i2c_ids[] = {
> +	{ "it6162", 0 },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(i2c, it6162_i2c_ids);
> +
> +static struct i2c_driver it6162_driver = {
> +	.driver = {
> +		.name = "it6162",
> +		.of_match_table = it6162_dt_ids,
> +	},
> +	.probe = it6162_probe,
> +	.remove = it6162_remove,
> +	.id_table = it6162_i2c_ids,
> +};
> +module_i2c_driver(it6162_driver);
> +
> +MODULE_AUTHOR("Pet Weng <pet.weng@ite.com.tw>");
> +MODULE_AUTHOR("Hermes Wu <Hermes.Wu@ite.com.tw>");
> +MODULE_DESCRIPTION("it6162 MIPI to HDMI driver");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry

