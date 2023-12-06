Return-Path: <devicetree+bounces-22236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBE9806DC8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEB40281BB8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952CF315B1;
	Wed,  6 Dec 2023 11:21:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4A89C3
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:21:10 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rApxY-0001hA-I4; Wed, 06 Dec 2023 12:20:56 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rApxV-00Dwmh-8D; Wed, 06 Dec 2023 12:20:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rApxV-005XuA-5K; Wed, 06 Dec 2023 12:20:53 +0100
Date: Wed, 6 Dec 2023 12:20:53 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
	chris.obbard@collabora.com
Subject: Re: [PATCH v3 12/14] drm/rockchip: vop2: Add debugfs support
Message-ID: <20231206112053.GA1318922@pengutronix.de>
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122449.13432-1-andyshrk@163.com>
 <20231205091541.GV1057032@pengutronix.de>
 <593f1092-3f5b-42ab-bc6e-dbd0fc8fb8ba@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <593f1092-3f5b-42ab-bc6e-dbd0fc8fb8ba@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Wed, Dec 06, 2023 at 06:20:58PM +0800, Andy Yan wrote:
> Hi Sascha:
> 
> > > +	unsigned int n = vop2->data->regs_dump_size;
> > 
> > 'n' is used only once, it might be clearer just to use the value where
> > needed and drop the extra variable.
> 
> Okay, will do.
> > 
> > > +	unsigned int i;
> > > +
> > > +	drm_modeset_lock_all(drm_dev);
> > > +
> > > +	if (vop2->enable_count) {
> > > +		for (i = 0; i < n; i++) {
> > > +			dump = &vop2->data->regs_dump[i];
> > > +			vop2_regs_print(vop2, s, dump, false);
> > > +		}
> > > +	} else {
> > > +		seq_printf(s, "VOP disabled:\n");
> > 
> > There's nothing following after the ':', right? Then this should be
> > "VOP: disabled\n" or without the colon at all.
> 
> the colon will be droped in next versin.
> 
> > 
> > > +	}
> > > +	drm_modeset_unlock_all(drm_dev);
> > 
> > This code is repeated in vop2_active_regs_show() below. Maybe factor
> > this out to a common function?
> > 
> 
> 
> Do you mean all the code between drm_modeset_lock_all and drm_modeset_unlock_all ?

Including drm_modeset_lock_all() and drm_modeset_unlock_all(), yes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

