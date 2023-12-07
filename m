Return-Path: <devicetree+bounces-22635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 949428084C8
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1E89281B32
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 196D43455D;
	Thu,  7 Dec 2023 09:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="XO5nacc4"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BF68DD;
	Thu,  7 Dec 2023 01:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1701941758; x=1733477758;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zk1dhT6C/KZSArTdzP/p5wqb9G2bfeL3f7SYtKcXyCo=;
  b=XO5nacc41r26Idi/nmianp+cUzaFk893BFOyqYjB6mO0xE4U7H6DonqD
   VFCPPhmpI0yX82UX0nYRn+2zQnMx0LKFJNfFR/GVEsmmnnc5V9RYZukbC
   6AZvb3gz+lfYKzBQ8waveLAzUs8Yom1bCreUwdQYtG6+4w0owtwK0y+Ey
   XkH+uvNY+/F5oamSmMOcAakgQZGLMu04OFaLAFddk5eaBp+9Xg7jfWn5T
   ATeoKUU4g7QW3cK5zhCLtnqysOPuRUVxARmuRKzN9UgiyEuQrF5ZJxLPl
   QZQkNatDzNgJtqpuiaDZRqweZ4Wjif1KSO8BXmOui4lm9FVHYzUUBHO/L
   A==;
X-CSE-ConnectionGUID: l1+X6HrHTViYXQWuY+0knA==
X-CSE-MsgGUID: 3jqu90UXQHGGuQa2OlUe8A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="asc'?scan'208";a="12923027"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Dec 2023 02:35:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 02:35:33 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Thu, 7 Dec 2023 02:35:29 -0700
Date: Thu, 7 Dec 2023 09:34:59 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: Shengyang Chen <shengyang.chen@starfivetech.com>
CC: Conor Dooley <conor@kernel.org>, <devicetree@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <neil.armstrong@linaro.org>,
	<quic_jesszhan@quicinc.com>, <sam@ravnborg.org>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<florian.fainelli@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
	<eric@anholt.net>, <thierry.reding@gmail.com>,
	<changhuang.liang@starfivetech.com>, <keith.zhao@starfivetech.com>,
	<jack.zhu@starfivetech.com>, <linux-rpi-kernel@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: raspberrypi: Add
 compatible property for waveshare 7inch touchscreen panel
Message-ID: <20231207-dullness-deprive-ece2d47ff69d@wendy>
References: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
 <20231124104451.44271-2-shengyang.chen@starfivetech.com>
 <20231124-lesser-sinister-7f9cd7b80e35@spud>
 <2d48e460-e46e-431f-bd7b-e34ebe73a40c@starfivetech.com>
 <20231206-isolating-smoked-b490952029d0@spud>
 <53b992e8-1b36-4540-a993-fde8e550faf9@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LKkffefepue30ywv"
Content-Disposition: inline
In-Reply-To: <53b992e8-1b36-4540-a993-fde8e550faf9@starfivetech.com>

--LKkffefepue30ywv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 07, 2023 at 11:48:56AM +0800, Shengyang Chen wrote:
> Hi, Conor
>=20
> thanks for comment
>=20
> On 2023/12/6 23:40, Conor Dooley wrote:
> > On Wed, Dec 06, 2023 at 05:43:48PM +0800, Shengyang Chen wrote:
> >> Hi, Conor
> >>=20
> >> On 2023/11/24 20:31, Conor Dooley wrote:
> >> > On Fri, Nov 24, 2023 at 06:44:50PM +0800, Shengyang Chen wrote:
> >> >> The waveshare 7inch touchscreen panel is a kind of raspberrypi pi
> >> >> panel
> >> >=20
> >> > Can you be more specific about what "is a kind of rpi panel" means?
> >> > Are they using identical chips as controllers or something like that?
> >> >=20
> >>=20
> >> Wareshare panel has same i2c slave address and registers address with=
=20
> >> the original raspberry pi panel. They both use Atmel firmware and they
> >> got same reg id. It can be operated by using the driver of raspberry p=
i driver
> >> after some change of the code. So I suppose it may be a kind of raspbe=
rry pi panel=20
> >> and discribe it in this way. It's my own judgement. Sorry about that.
> >> Maybe just like Dave said, It cloned the behaviour of the raspberri pi=
 panel.
> >> I will change the discribtion in next version to not make other confus=
ed.
> >>=20
> >> By the way, we will try Stefan's method before next version.=20
> >> The method we used in this patch may be abandoned if Stefan's method i=
s verified in our platform.
> >> At that time yaml may also be changed to fit new method.
> >=20
> > I don't know what Stefan's approach is, but I do not think that a
> > bindings patch should be dropped. The waveshare might be a clone, but it
> > is a distinct device. If the same driver can control both, then the
> > compatible setups that should be permitted are:
> > compatible =3D "raspberrypi,7inch-touchscreen-panel";
> > and
> > compatible =3D "waveshare,7inch-touchscreen-panel", "raspberrypi,7inch-=
touchscreen-panel";

> If we use Stenfan's method, we can reuse the code of panel-simple.c
> we may submit our patch to
> /Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> /drivers/gpu/drm/panel/panel-simple.c
> as a new panel porting. That may less confuse.

As long as you provide a specific compatible, and not re-use the rpi
one, that's fine. It just sounded like you were intending to reuse that
here, but from this message it seems like I misunderstood.

Thanks,
Conor.

--LKkffefepue30ywv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXGRvwAKCRB4tDGHoIJi
0uepAPsFO121yBy+oxhB7OSau+AELQyXEwausDJX8GujOigD2wD+NWi8eCcUWndt
3hUdUUgCa3P8sLTU12m5hwaHq3cJ9Qo=
=bdsy
-----END PGP SIGNATURE-----

--LKkffefepue30ywv--

