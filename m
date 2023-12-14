Return-Path: <devicetree+bounces-25333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B0D812EAE
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA93D28144B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6333FE52;
	Thu, 14 Dec 2023 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EItITJFf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA353F8EE
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 11:36:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43869C433C8;
	Thu, 14 Dec 2023 11:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702553767;
	bh=RJJ2ExTpt6thgw3MxxPjwU1KJcbb3KLf0ZIPQsayZ8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EItITJFfxWft3+sdAYdW7BGG0amsTFC/dOrC9Vx22goMq1dYY4EILhhapeS7YIvnn
	 xkZFLFaZBMUqr4t44jDEBr/neZ0lRR9sw8g2YMt9NhM7Rzdym0fR97EqnVRy+B3EZS
	 Lk2u/QLGfdBhryDYSKhzHH/6rGYUrDlK1pO49JVWTE+kYJ5z/2KL91QCye2lLowIsu
	 4u5tNlJjVlvfTId5kISoypUEi1UMlcBvfRT2GMn80jIEAnFlOC8Q2cKh+D1rIaqiYt
	 /1DdDBUXa0/8qiUdyvXQeIY6N8qoAJqTCMeAjFeOi4RhgHlZqM2+7pY9R/qc1BOPEe
	 drCzTe8nQJ8Ug==
Date: Thu, 14 Dec 2023 12:36:05 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/11] drm/rockchip: inno_hdmi: Correctly setup HDMI
 quantization range
Message-ID: <qr7if2k76wdqgevdcwqxj2dkcbga72owjqlk3qaazujhejjloo@cnvmuq27qqns>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
 <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
 <3053311.k3LOHGUjKi@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6eyagsib3egjojx7"
Content-Disposition: inline
In-Reply-To: <3053311.k3LOHGUjKi@diego>


--6eyagsib3egjojx7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 12:17:34PM +0100, Heiko St=FCbner wrote:
> Am Donnerstag, 14. Dezember 2023, 12:12:08 CET schrieb Alex Bee:
> > Hi Maxime
> >=20
> > Am 14.12.23 um 08:56 schrieb Maxime Ripard:
> > > Hi Alex,
> > >
> > > Thanks for working on this!
> > >
> > > On Wed, Dec 13, 2023 at 08:51:18PM +0100, Alex Bee wrote:
> > >> The display controller will always give full range RGB regardless of=
 the
> > >> mode set, but HDMI requires certain modes to be transmitted in limit=
ed
> > >> range RGB. This is especially required for HDMI sinks which do not s=
upport
> > >> non-standard quantization ranges.
> > >>
> > >> This enables color space conversion for those modes and sets the
> > >> quantization range accordingly in the AVI infoframe.
> > >>
> > >> Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI suppo=
rt")
> > >> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > >> ---
> > >>   drivers/gpu/drm/rockchip/inno_hdmi.c | 40 ++++++++++++++++++++++--=
----
> > >>   1 file changed, 32 insertions(+), 8 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/=
rockchip/inno_hdmi.c
> > >> index 345253e033c5..32626a75723c 100644
> > >> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> > >> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> > >> @@ -33,6 +33,7 @@ struct hdmi_data_info {
> > >>   	unsigned int enc_in_format;
> > >>   	unsigned int enc_out_format;
> > >>   	unsigned int colorimetry;
> > >> +	bool rgb_limited_range;
> > >>   };
> > >>  =20
> > >>   struct inno_hdmi_i2c {
> > >> @@ -308,6 +309,18 @@ static int inno_hdmi_config_video_avi(struct in=
no_hdmi *hdmi,
> > >>   	else
> > >>   		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
> > >>  =20
> > >> +	if (hdmi->hdmi_data.enc_out_format =3D=3D HDMI_COLORSPACE_RGB) {
> > >> +		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> > >> +						   &hdmi->connector, mode,
> > >> +						   hdmi->hdmi_data.rgb_limited_range ?
> > >> +						   HDMI_QUANTIZATION_RANGE_LIMITED :
> > >> +						   HDMI_QUANTIZATION_RANGE_FULL);
> > >> +	} else {
> > >> +		frame.avi.quantization_range =3D HDMI_QUANTIZATION_RANGE_DEFAULT;
> > >> +		frame.avi.ycc_quantization_range =3D
> > >> +			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
> > >> +	}
> > >> +
> > >>   	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0,=
 0, 0);
> > >>   }
> > >>  =20
> > >> @@ -334,14 +347,22 @@ static int inno_hdmi_config_video_csc(struct i=
nno_hdmi *hdmi)
> > >>   	if (data->enc_in_format =3D=3D data->enc_out_format) {
> > >>   		if ((data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB) ||
> > >>   		    (data->enc_in_format >=3D HDMI_COLORSPACE_YUV444)) {
> > >> -			value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> > >> -			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> > >> -
> > >> -			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> > >> -				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> > >> -				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> > >> -				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> > >> -			return 0;
> > >> +			if (data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB &&
> > >> +			    data->enc_out_format =3D=3D HDMI_COLORSPACE_RGB &&
> > >> +			    hdmi->hdmi_data.rgb_limited_range) {
> > >> +				csc_mode =3D CSC_RGB_0_255_TO_RGB_16_235_8BIT;
> > >> +				auto_csc =3D AUTO_CSC_DISABLE;
> > >> +				c0_c2_change =3D C0_C2_CHANGE_DISABLE;
> > >> +				csc_enable =3D v_CSC_ENABLE;
> > >> +			} else {
> > >> +				value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> > >> +				hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> > >> +				hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> > >> +					  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> > >> +					  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> > >> +					  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> > >> +				return 0;
> > >> +			}
> > >>   		}
> > >>   	}
> > >>  =20
> > >> @@ -458,6 +479,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdm=
i,
> > >>   	else
> > >>   		hdmi->hdmi_data.colorimetry =3D HDMI_COLORIMETRY_ITU_709;
> > >>  =20
> > >> +	hdmi->hdmi_data.rgb_limited_range =3D
> > >> +		drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RANGE_=
LIMITED;
> > >> +
> > > This patch conflicts heavily with my inno_hdmi patches here (patches =
22 to 38):
> > > https://lore.kernel.org/dri-devel/20231207-kms-hdmi-connector-state-v=
5-0-6538e19d634d@kernel.org/
> > I'm aware of that and I mentioned it in the cover letter. Your series i=
s=20
> > not merged yet and it didn't get much feedback so far. What is the=20
> > status there? Especially because you are removing things from inno-hdmi=
=20
> > driver (which aren't really required to remove there) which will I have=
=20
> > to reintroduce.
>=20
> Sadly I haven't found the time to look closer at Maxime's series so far,
> but I got the impression that it separates into multiple cleanup steps
> for a number of controllers.

Yeah, one of the previous version comment was to support more
controllers than vc4, which is fair. So I ended up reworking and
converting multiple controllers, but most of the clean up changes can be
applied outside of that series just fine.

I just didn't find someone to test / review them yet :)

Maxime

--6eyagsib3egjojx7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXropAAKCRDj7w1vZxhR
xSykAQDqYIpgTslaMLOwOAy0RyHVwEN9XruMjhgsz5yDExWnQgD/c1EitiQyt/Oe
R2AEZo6kERC+m3DXu3PnMvcgVzbvCw8=
=rUtn
-----END PGP SIGNATURE-----

--6eyagsib3egjojx7--

