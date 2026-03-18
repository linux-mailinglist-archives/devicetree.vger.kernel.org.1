Return-Path: <devicetree+bounces-276928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFJ6As48umnsTAIAu9opvQ
	(envelope-from <devicetree+bounces-276928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:49:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4662B5FEE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 760133014429
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5834256C8B;
	Wed, 18 Mar 2026 05:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iGCe4xDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB122AEF5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773812939; cv=none; b=Nxv02khxd6KEHg+/MJAWGQV4IMeDHQ/p0cuDdNEa/oOei7cF9AVRqK8sjcuBEmKHxM5T3Gvnwb9+WFZb45xYIFYps7SlwZ4i7yHIWl/f8IQD/O+kfovEfViCAjVbnNZi6PICowUtkjoqBM0tH5YTvVPY7qtN8T4HPtdSpx/ObSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773812939; c=relaxed/simple;
	bh=zgpz04UILeS0ekUpQYQ+13zlDaHPoNZni1Piiml8PBA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=GtMKJfblLi2NVWSQSuwR3kSGw1A4Yl79uR297SpM5tEfO4YUal/zQ7hkwi/XI5uF6GMadEkEIPnUoiaeTpKwlZxc4dJDZus0VsYOW3a1oEHtBHjMp0z/r/UBKvIUsolhh6iqt+5YKzK0NFf6lu+e2bb1BExvHySvV27Vw21tnvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iGCe4xDc; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2ad9f316d68so32172145ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 22:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773812938; x=1774417738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RTBJ3ZdbKmtxUEiIDKVG3F9qt5sUaMf7IHNuSeINr0s=;
        b=iGCe4xDc5UpTWGKJWHRsTOTkRT0LEZI+kq/wpMoLzBKD2f1OoSnz1jXa0v18RJzjFQ
         RNgXq6G4vdmkx6XIQAjrb19heqILk/wHzj8l0lRETVAuVj8T+wH6c6Esmrpb3S5wjnRj
         NIWM/yEAaF9evQ8Uz1W1lJlTMFfGSTxz7B+CnblqHiWAli54aT8HSoqWzIOJeMEwmERh
         4OUJwdvWj94XTcrhgPxTKHaHzH1Oei88eSHSeRITtKWrxO36Zs+YLTh7ZvZn1oKKYv/j
         +KjVECxPH+MoUVpMnpNCUsiu5iHrvPG76twP5ajvGX8miAO7QNzbo5A61UaCSymQTXfI
         lPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773812938; x=1774417738;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RTBJ3ZdbKmtxUEiIDKVG3F9qt5sUaMf7IHNuSeINr0s=;
        b=FNcJ8+UBE+KRCIVX2Vq8QKzsXm5q16uDtSzYcPeD3myioS8Xm+gNxIJ+4Gg1p6cT0o
         +lMprA3+YfF2OVMz4RP68kGKzdBHXXx14ys5iindVCWVTZsdZo4WY8TQV77TXdipd9Eu
         zPfRfVKG+m0/7pRjjoFOghrqhz8ZROdlf4cf4aCBomjM3eCUHjoDdqDPHVNjCouaE1zp
         yL+3f5c5Kqt1TF2lRI0+7ORXiebmEd+LmYJ2oVbCJqxHW37Bd6V2xyGjU+vnU/OMIPNd
         dpK3DuJrnD26sMZfoOe0TETs5M3XARcZ6KnVmLhgYtaNHMpjfiJMtWjoX6gH3eXjgm/8
         CPsg==
X-Forwarded-Encrypted: i=1; AJvYcCU1iiJPf6LmZJ1hdMXcmW8uNthVAgz7J2HBWopdj+u9GK5XLLschDaAenumFmLibEUdDULAisYQnWyD@vger.kernel.org
X-Gm-Message-State: AOJu0YwTHgUEVVtVnXh52InVVQTS+cxk+rdwhHTxx7xh+PLht3K0Mref
	+4E+JbbM2DMyE8bh4T+oKosU8JXex8LsaCeLEHXxBTNX3JL4hbNs6c1M
X-Gm-Gg: ATEYQzyhEzXzjtT0RSHCD385euf40UvTRaGRgzhwjfyKur5q6ngzMZ/o+KU8BmWOmFh
	jVt/KPxDP/5XSSy1b69BlPiAE0OYYuE6xmVOtGhZj1SDlN1XgKfYfZQIPXt8dXjeTS6Pjtx42gI
	m5RBdLQLdBa909UA2sPmwBmMmQ+oqUWIq+8PzRrfWt2Hid8YxtQavjwj76y79obtUptkquNBDqO
	3SLi+O2iTnzkcvFREY138caLc0Vf0S3ml8Ay3sJW/BZ04jIxsd8TbvwrLAmthOnMJoVNRhC//EA
	ZJrDj/5IBBiAAFyzjSi6et9ljYIfGzT8S/paK2NIoZjDI/7jpomk/s56Tgb9UJs9fA0HRp23YnY
	8VQY7NjtWUvYCY9FtKmhS32vHXqKuAyh/xhekFKN9JIjEvyoiSEWeSj7VYpqzWzp4q1S8+oDSM6
	XRRHxQ39L4sQ3vB/sGH0LJ7wdx2jVXKDg=
X-Received: by 2002:a17:903:2cc:b0:2b0:6d2d:f1d5 with SMTP id d9443c01a7336-2b06e401894mr19914475ad.45.1773812937654;
        Tue, 17 Mar 2026 22:48:57 -0700 (PDT)
Received: from [172.16.20.13] ([136.226.252.245])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f0b92sm16471795ad.50.2026.03.17.22.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 22:48:57 -0700 (PDT)
Message-ID: <ff819e02-3ecc-4729-9c6f-16c74c2b23cb@gmail.com>
Date: Wed, 18 Mar 2026 11:19:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: tessolveupstream@gmail.com
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ti, sn65dsi83: Add
 dual-link video mode property
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, marex@denx.de,
 valentin@compulab.co.il, philippe.schenker@toradex.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 dri-devel <dri-devel-bounces@lists.freedesktop.org>
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <20260312043743.261475-2-tessolveupstream@gmail.com>
 <DH0X5VHW15QI.XOHUGC314J1P@bootlin.com>
Content-Language: en-US
In-Reply-To: <DH0X5VHW15QI.XOHUGC314J1P@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276928-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.2:email,2c:email,bootlin.com:url]
X-Rspamd-Queue-Id: 7C4662B5FEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 12-03-2026 21:16, Luca Ceresoli wrote:
> Hello Sudarshan,
> 
> On Thu Mar 12, 2026 at 5:37 AM CET, Sudarshan Shetty wrote:
>> Add a new optional device tree property `ti,dual-link-video-mode`
>> to indicate that the bridge should configure the device for
>> dual-link LVDS video mode.
>>
>> In dual-link configurations, some panels require the horizontal
>> timing parameters to be adjusted before programming them into
>> the device. In such cases, the horizontal timing values must be
>> divided by two when operating in dual-link mode.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> 
> This is not needed. Dual link mode is already implied by the presence of
> port@2 and port@3.
> 
> Also, the driver implements that already, and handles even/odd pixel swap
> as well:
> 
> 	ctx->lvds_dual_link = false;
> 	ctx->lvds_dual_link_even_odd_swap = false;
> 	if (model != MODEL_SN65DSI83) {
> 		struct device_node *port2, *port3;
> 		int dual_link;
> 
> 		port2 = of_graph_get_port_by_id(dev->of_node, 2);
> 		port3 = of_graph_get_port_by_id(dev->of_node, 3);
> 		dual_link = drm_of_lvds_get_dual_link_pixel_order(port2, port3);
> 		of_node_put(port2);
> 		of_node_put(port3);
> 
> 		if (dual_link == DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS) {
> 			ctx->lvds_dual_link = true;
> 			/* Odd pixels to LVDS Channel A, even pixels to B */
> 			ctx->lvds_dual_link_even_odd_swap = false;
> 		} else if (dual_link == DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS) {
> 			ctx->lvds_dual_link = true;
> 			/* Even pixels to LVDS Channel A, odd pixels to B */
> 			ctx->lvds_dual_link_even_odd_swap = true;
> 		}
> 	}
> 
> (https://elixir.bootlin.com/linux/v7.0-rc3/source/drivers/gpu/drm/bridge/ti-sn65dsi83.c#L895-L916)
> 

Thanks for the clarification.
For reference, the DTS currently used on our platform already 
describes the two LVDS output ports as follows:

lvds_bridge: bridge@2c {
                compatible = "ti,sn65dsi84";
                reg = <0x2c>;
                enable-gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;

                ti,dual-link-video-mode;

                ports {
                        #address-cells = <1>;
                        #size-cells = <0>;

                        port@0 {
                                reg = <0>;

                                sn65dsi84_in: endpoint {
                                        data-lanes = <1 2 3 4>;
                                        remote-endpoint = <&mdss_dsi0_out>;
                                };
                        };

                        port@2 {
                                reg = <2>;

                                sn65dsi84_out_a: endpoint {
                                        data-lanes = <1 2 3 4>;
                                        remote-endpoint = <&lvds_panel_out_a>;
                                };
                        };

                        port@3 {
                                reg = <3>;

                                sn65dsi84_out_b: endpoint {
                                        data-lanes = <1 2 3 4>;
                                        remote-endpoint = <&lvds_panel_out_b>;
                                };
                        };
                };

> Luca
> 
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


