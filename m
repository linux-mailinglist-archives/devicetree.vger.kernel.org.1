Return-Path: <devicetree+bounces-276927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ5IJJY8umnsTAIAu9opvQ
	(envelope-from <devicetree+bounces-276927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:48:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E088B2B5FD5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 528A2301369A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A875521D5B0;
	Wed, 18 Mar 2026 05:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mPFIDOFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA8A2AEF5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773812883; cv=none; b=PMaMmz/Xp1BODrrpQgn1+bf4E6XboTf+XDvxNpXmOXfnHwPeIj830b0evzyqm+grwayjgi9amGE85iB9xhWDIKflCaJ3Oy4upW5p/yhL8RYnwfXM67qtaoxbQQNTXD9Mwu7aPzHU2G5vSGEhoIezQpBdv4G0658kqKxkN/MqNB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773812883; c=relaxed/simple;
	bh=zgpz04UILeS0ekUpQYQ+13zlDaHPoNZni1Piiml8PBA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=N0SfMTJ1ilq7z1NFfbhwC8wo1D3tIF5H5FMjFg/KsLlP45IipgMhwTcqh0j4T9teInLalKCxYbG0BgCndH6QDBfKBMeH+UgKht+2PKiuDFkfU1cFrStbyAmvUdAS3lI2Xe8d6fscqFkAvQOAJGiA9G5n8qIB1u1n4gL8nn0asxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mPFIDOFF; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-35b905a05a8so2230518a91.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 22:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773812882; x=1774417682; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RTBJ3ZdbKmtxUEiIDKVG3F9qt5sUaMf7IHNuSeINr0s=;
        b=mPFIDOFF5XJWL+0xjGJ6zTPs2VSldSlcq4+iBbWKmCESpyHRAYPvytX4gRSg3SD9Dy
         dgHRUyitsui7Ug2OSg4/CdxQMa5rh4jKk2jolaiz+whPtHzYbZCzmkeA+yO6EqQsyxrV
         p0K2IuUJe9yqrN4ppoeSVuvbusSCKVK93ao8VjH6OLTumJKfu6o2ertcBENc51ZkPAw4
         nBF9vTzrxt/xaBoD+peE+3p3xe0Fm4tgBfbEvlZx/MROLQy35LVv47oIstHJH5TS8v5v
         SlQw36kh1XtxAt5rUmgLLIEkla8qCy/mpchToX08J8L2McL3TyBpgeFhO7WoGoBxXsWR
         cA+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773812882; x=1774417682;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RTBJ3ZdbKmtxUEiIDKVG3F9qt5sUaMf7IHNuSeINr0s=;
        b=Yy+xvP3q9LKMtydlSUrdA6IbVTry2T9iS8eu1PYhoM7yp+GHhqu3XocikMtNyRPmKh
         PSL54hvT9+ujXXixKNlG4Px2XHoY884kvSKvm9tyYiXxsvxn9Unyi2fIACKtzV9wdQq/
         lv9PSTAxbXH6BW8mloRGa/SEDxTjoatwm9daV+8LMxTow2Z8S7syo5C102M+NkoclYiK
         u2HxvEXh7ALDBWTc2kXrx56Whphg6At3hhPS7ltM9uUUHChP4r8l5CT4Bi/CXdcepiBU
         sRpc+A9o0LyilCtCzJxL43C++Ckth/hBfvYoGsNQ8xMOlnpXtWs9Dxl7Iuz78uIHL4+b
         smFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwENfhV3HvYGFrAmanG2rswTTnh1/falvpGdKQwJOR55VAszb2KHpuS3iadYt1N0kjx/YPyujTGh2S@vger.kernel.org
X-Gm-Message-State: AOJu0Ywpwt/5wkqtCpLxmjOk86roEjnZeuCAa413wdiYuYzNGRkM6m4c
	Li7WGG8vSS7LyrY9VIsQ/l1gbgCXwii9n2TuD8qnPe9PAGG2NqU6n/QZ
X-Gm-Gg: ATEYQzwgL5gEA2IGGmmuKfmI4bho95WWCYU5CKKBY1Rav3vGaJZfr6/NzPJ1pAdkIeb
	OG/E1f/sQ0cEehuJ/hWZq5l6f7Gqf7uDymiMnKkShWMHxTj94WoBSnxI8TVryB1f1VXu7vwKnb7
	clHD0SFax51byyWFlQ1NW0V0JBuUCCIitat45Zp3F7w9fSXt6DrBxEiGoPiZx8UegU9SPlovNIP
	6HaPlqwo98bcpK/G4iYFV9x0soshuLtrUHAF3xQ2MEPXkmFd8BvH6uBHPxg98Czjg4nhz7+MY65
	uFXvPYW8ZiARnDICucV5gSk4Xwr4VbuBjiTVtKPexoNScb4FtVTRBsLJdRjPLrOydxqebucwOw9
	qcOOR3jnHHzXnd471wlqvPpFQuLNWEtqc8wsdOet9Wh1iz63NH5/cwnx1ErDqq9XJTWxmOw53Ty
	Ve5LLWm23NHj83zP3aY9AUjM2K4oz4L4I=
X-Received: by 2002:a17:903:1a67:b0:2ae:3b9b:db34 with SMTP id d9443c01a7336-2b06e41a91emr21042325ad.42.1773812881632;
        Tue, 17 Mar 2026 22:48:01 -0700 (PDT)
Received: from [172.16.20.13] ([136.226.252.245])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e419a31sm16508845ad.4.2026.03.17.22.47.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 22:48:01 -0700 (PDT)
Message-ID: <2b1c6372-7fba-47db-89f6-c376b4a1dbdd@gmail.com>
Date: Wed, 18 Mar 2026 11:18:20 +0530
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276927-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.2:email]
X-Rspamd-Queue-Id: E088B2B5FD5
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


