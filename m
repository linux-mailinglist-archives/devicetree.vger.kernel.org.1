Return-Path: <devicetree+bounces-101830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E333974442
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 22:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C518D1F2572A
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 20:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE781A4E93;
	Tue, 10 Sep 2024 20:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zZBH1J/t"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E89117622D;
	Tue, 10 Sep 2024 20:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726001233; cv=none; b=NVwQ4z/zX/e4/dZaXo61lnY3vDvJj62lbmht6q2KXRb/prD5qX259ygCNcil4zOKgPOUQMk3u46zKbO2fcxawkT6VHjdYItYM8jQPmHIol1+NqsDPvf/6HE+zAi060RffvmUFMYRPQ6s2sgye5I+xGnWlbgP0qLPBi1ynZhsHps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726001233; c=relaxed/simple;
	bh=dy8jTnTM+SvAJ0Z/QrreJvOE7m/ODddATQSKqABlB9M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S2JXiI2MSWLMfaKkT+UPvbLmmH5vXBiov+UotcNB89DtW5JXeiTM4CJ+Ke9kYqjsDYFlNGKCFfybnzA8hUFK8DgpHbSLtZmtICDwDopUVVEa3EiOKK9kHu0nrG518tk1NRaY3uvRkE/flFbOlrfopbp25F4MXRf4AMW80AtR1wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zZBH1J/t; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4IUESHg9VSQTyLHvh/dHsE6E0uVA9BycG+I/FS++rd0=; b=zZBH1J/tBMuY5ZXPwORRtkAvGr
	oEbkSD6neigw9qAJRHSWNx/gYavOcn28UNrJb5EJy+Q8dpa8fnNnzgf3kxXkeDQ/IfbCNYMZi/vdE
	xzh25TRX73SmY0HCpeGD7DB5vKR/Mvt83tSVAlDgXBA52GoiV3wBujXUPyD4Sjo3ig0kX6cOXuqKt
	y8RqBU8AOMInhEnR8CouEfpEK0HLKUqGRQzS/5Ph7kIiFAJjy9mzg0E8IvzxIyteMshV6k+t4Il/K
	NuW9cdGDI4VLkuKRbgrqKmRC59HqnrjI4w22IxaIcRWaIg0wNNB37mkN0a6Vpyz16BRaKVvxC/3sB
	75HiS6gA==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so7ky-00009S-MO; Tue, 10 Sep 2024 22:46:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Date: Tue, 10 Sep 2024 22:49:05 +0200
Message-ID: <26154114.p16igRAIYV@diego>
In-Reply-To: <1796743.esFFXGZ24q@diego>
References:
 <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <324b12ea-805a-499c-909d-3723f0bca7cb@collabora.com>
 <1796743.esFFXGZ24q@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Dienstag, 10. September 2024, 18:39:54 CEST schrieb Heiko St=FCbner:
> Am Dienstag, 10. September 2024, 17:41:42 CEST schrieb Cristian Ciocaltea:
> > On 9/10/24 6:21 PM, Heiko St=FCbner wrote:
> > > Am Dienstag, 10. September 2024, 17:07:57 CEST schrieb Heiko St=FCbne=
r:
> > >> Am Freitag, 6. September 2024, 03:17:42 CEST schrieb Cristian Ciocal=
tea:
> > >>> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI=
 2.1
> > >>> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based =
on a
> > >>> Samsung IP block.
> > >>>
> > >>> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> > >>> without audio, CEC or any of the HDMI 2.1 specific features.
> > >>>
> > >>> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> > >>> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> > >>> Tested-by: Heiko Stuebner <heiko@sntech.de>
> > >>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > >>
> > >> I had switched from the v3 to this v6 in my playground-kernel today,
> > >> with v3 I've never seen those, but now with v6 I have gotten multiple
> > >> times:
> > >>
> > >> [  805.730608] Internal error: synchronous external abort: 000000009=
6000010 [#1] PREEMPT SMP
> > >> [  805.739764] Modules linked in: snd_soc_simple_card crct10dif_ce s=
nd_soc_simple_card_utils panthor drm_gpuvm drm_exec fuse
> > >> [  805.752031] CPU: 3 UID: 0 PID: 775 Comm: Xorg Not tainted 6.11.0-=
rc7-00099-g459302f1f908-dirty #934
> > >> [  805.762143] Hardware name: Theobroma Systems RK3588-Q7 SoM on Hai=
kou devkit (DT)
> > >> [  805.770407] pstate: 204000c9 (nzCv daIF +PAN -UAO -TCO -DIT -SSBS=
 BTYPE=3D--)
> > >> [  805.778186] pc : regmap_mmio_read32le+0x8/0x20
> > >> [  805.783155] lr : regmap_mmio_read+0x44/0x70
> > >> [  805.787828] sp : ffff80008293b830
> > >> [  805.791516] x29: ffff80008293b830 x28: ffff80008293bce8 x27: ffff=
0001f20ab080
> > >> [  805.799495] x26: ffff800081139500 x25: 0000000000000000 x24: 0000=
000000000010
> > >> [  805.807472] x23: 0000000000000000 x22: ffff0001f5a4b400 x21: ffff=
80008293b8c4
> > >> [  805.815450] x20: 0000000000000968 x19: ffff0001f5a27a80 x18: 0000=
000000000070
> > >> [  805.823428] x17: 0002441400000005 x16: 000004650441043c x15: 0438=
000008980804
> > >> [  805.831406] x14: 07d8089807800780 x13: 0438000008980804 x12: ffff=
800081133630
> > >> [  805.839384] x11: 0002441400000005 x10: 000004650441043c x9 : ffff=
800081a59000
> > >> [  805.847361] x8 : 07d8089807800780 x7 : 0000000000000000 x6 : ffff=
0001f5b453c0
> > >> [  805.855339] x5 : ffff800080750dc0 x4 : 0000000000000968 x3 : 0000=
000000000968
> > >> [  805.863316] x2 : ffff800080751520 x1 : 0000000000000968 x0 : ffff=
800083b20968
> > >> [  805.871294] Call trace:
> > >> [  805.874012]  regmap_mmio_read32le+0x8/0x20
> > >> [  805.878588]  _regmap_bus_reg_read+0x6c/0xac
> > >> [  805.883262]  _regmap_read+0x60/0xd8
> > >> [  805.887159]  _regmap_update_bits+0xf4/0x140
> > >> [  805.891832]  regmap_update_bits_base+0x64/0xa0
> > >> [  805.896797]  dw_hdmi_qp_bridge_atomic_enable+0x134/0x220
> > >> [  805.902734]  drm_atomic_bridge_chain_enable+0x54/0xc8
> > >> [  805.908380]  drm_atomic_helper_commit_modeset_enables+0x194/0x280
> > >> [  805.915190]  drm_atomic_helper_commit_tail_rpm+0x50/0xa0
> > >> [  805.921125]  commit_tail+0xa0/0x1a0
> > >> [  805.925021]  drm_atomic_helper_commit+0x17c/0x1b0
> > >> [  805.930276]  drm_atomic_commit+0xb8/0x100
> > >> [  805.934754]  drm_atomic_connector_commit_dpms+0xe0/0x110
> > >> [  805.940690]  drm_mode_obj_set_property_ioctl+0x1c0/0x420
> > >> [  805.946626]  drm_connector_property_set_ioctl+0x3c/0x68
> > >> [  805.952465]  drm_ioctl_kernel+0xc0/0x130
> > >> [  805.956846]  drm_ioctl+0x214/0x4a0
> > >> [  805.960643]  __arm64_sys_ioctl+0xac/0xf8
> > >> [  805.965025]  invoke_syscall+0x48/0x104
> > >> [  805.969214]  el0_svc_common.constprop.0+0x40/0xe0
> > >> [  805.974470]  do_el0_svc+0x1c/0x28
> > >> [  805.978171]  el0_svc+0x34/0xe0
> > >> [  805.981582]  el0t_64_sync_handler+0x120/0x12c
> > >> [  805.986449]  el0t_64_sync+0x190/0x194
> > >> [  805.990540] Code: d503201f d503201f f9400000 8b214000 (b9400000)
> > >>
> > >> I guess that might be some clocking issue?
> > >=20
> > > Forgot to add, this happens when the display has blanked and then is
> > > supposed to unblank again.
> >=20
> > Hmm, I've never encountered this while testing with my v6.11-rc1 based
> > tree.  What is your current kernel base?  Did you change it while
> > switching from v3 to v6?
> >=20
> > I'll rebase my tree onto latest linux-next and see if I can reproduce.
>=20
> The setup is 6.11-rc7 with your hdmi series + my wip dsi + X11 running
> on top.
>=20
> At some point after being idle a while this blanks the display, which will
> probably turn off clocks and such. After moving the mouse or just
> doing anything else that unblanks the display, that splat happens.
>=20
> Apart from updating mesa from 24.2.0 to 24.2.2 I haven't changed
> anything in my test-setup so far.

So now I've re-tested all :-) ... test scenario was that I reverted the v6
patches and then applied the older versions (and fixed up the dts if
needed wrt the vo{1}-grf thing). So now really only the hdmi driver
changed. So I booted, waited for the display to blank and hit reboot
on the serial console:

=2D v3 console output turned back on and rebooted fine
=2D v4 console output turned back on and rebooted fine
=2D v5 hit the error from above
=2D v6 hit the error from above

So something between v4 and v5 seems to cause the hickup.





