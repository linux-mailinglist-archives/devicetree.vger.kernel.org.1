Return-Path: <devicetree+bounces-2497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 263D07AB056
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3798D1C20994
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9098E1F171;
	Fri, 22 Sep 2023 11:16:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE971F166
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:16:21 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F4A1AC;
	Fri, 22 Sep 2023 04:16:19 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-502e7d66c1eso3322084e87.1;
        Fri, 22 Sep 2023 04:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695381378; x=1695986178; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9THroEikiL60Yi8fcuQ2zOCWbKMjxLA15+wfPD4+rk8=;
        b=XWcrk36LErSz9FQfU5G3Qc8MV4yZvGckoRZGh0S5w4xy76sNGCEz9OTMARfeVwu4+T
         pbXCXTQobWxq6sJGFMgjE1wnGNNUpKrUhTB8CExDTBhz97vzFZTweAuMEYwJNgrx03HF
         huW8XhcnCIGeZAf0X2LfD24C27B7F0GN65q1c2wVgJ/JhzE83yJTyLxYpdAjfO4Dyv1D
         IEdJOCv07HOPs7ZvnV40+ZwUbVPkMdzNEkKPfZUOKUD8hu/3X6KHwvlVgITzrR3md8xa
         FrA35w7+YLjMkTZpS/Fvh8Ubn4svsbFrOZYDq01IFiNo23VGZaikSTd0DVQUKxWizNom
         RKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695381378; x=1695986178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9THroEikiL60Yi8fcuQ2zOCWbKMjxLA15+wfPD4+rk8=;
        b=VpZMGa06c5YjCpGs1pbpgYG5IjoKOY0dEINyAF1elZ612vDwLrQ7WYgNC3daQ4WVip
         aZCcKIc/U7/HjEbnAFCoDigBAYL+v9+Ud9gcbt31RD5jxBADr3gvw6AmcOsOI0RNHyJm
         Q2jstiYvlb8ypr2ouL9019gBXk56y1q/+sJW0HQTN6Q5LiZ/PDyLAFztUqycm//q7x/j
         2PrxysASKIbWioO/97cdkmSYPGuBT8w+coDWx2frylb8aBpzoyZoSlOO753fgkp/JdD9
         Eq3oJCiEWCj9QZK/4hxnw/4ZLszxSytujEDR6FrllFyPj7V/gBMPbOmqgx5ffqVGIMH7
         6EtQ==
X-Gm-Message-State: AOJu0Yz5GueauLAMVVwy+T6q23G6L3OlIaA/ZufqjWNCufgR/SfIPnIv
	FZ9bjsocEW9+xhLwhZi266M=
X-Google-Smtp-Source: AGHT+IGH0g7GdaLcu+vhdbeg1Ghm9EkTuNXO3uj3oWWqslzygJw2+deXocBIMhOo93Jihtiv6fpS/Q==
X-Received: by 2002:a05:6512:2013:b0:502:ffdf:b098 with SMTP id a19-20020a056512201300b00502ffdfb098mr6463433lfb.6.1695381377612;
        Fri, 22 Sep 2023 04:16:17 -0700 (PDT)
Received: from dc78bmyyyyyyyyyyyyyyt-3.rev.dnainternet.fi (dc78bmyyyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:16f8:1500::1])
        by smtp.gmail.com with ESMTPSA id eq25-20020a056512489900b004fe1f1c0ee4sm696297lfb.82.2023.09.22.04.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 04:16:16 -0700 (PDT)
Date: Fri, 22 Sep 2023 14:16:08 +0300
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Angel Iglesias <ang.iglesiasg@gmail.com>,
	Andreas Klinger <ak@it-klinger.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Benjamin Bara <bbara93@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/6] tools: iio: iio_generic_buffer ensure alignment
Message-ID: <029b4e3e18c76b330b606f5b14699e5ee4e5ed35.1695380366.git.mazziesaccount@gmail.com>
References: <cover.1695380366.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ubfT4fawWH07RnEo"
Content-Disposition: inline
In-Reply-To: <cover.1695380366.git.mazziesaccount@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--ubfT4fawWH07RnEo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The iio_generic_buffer can return garbage values when the total size of
scan data is not a multiple of largest element in the scan. This can be
demonstrated by reading a scan consisting for example of one 4 byte and
one 2 byte element, where the 4 byte elemnt is first in the buffer.

The IIO generic buffert code does not take into accunt the last two
padding bytes that are needed to ensure that the 4byte data for next
scan is correctly aligned.

Add padding bytes required to align the next sample into the scan size.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
---
Please note, This one could have RFC in subject.:
I attempted to write the fix so that the alignment is done based on the
biggest channel data. This may be wrong. Maybe a fixed 8 byte alignment
should be used instead? This patch can be dropped from the series if the
fix is not correct / agreed.

 tools/iio/iio_generic_buffer.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/tools/iio/iio_generic_buffer.c b/tools/iio/iio_generic_buffer.c
index 44bbf80f0cfd..fc562799a109 100644
--- a/tools/iio/iio_generic_buffer.c
+++ b/tools/iio/iio_generic_buffer.c
@@ -54,9 +54,12 @@ enum autochan {
 static unsigned int size_from_channelarray(struct iio_channel_info *channe=
ls, int num_channels)
 {
 	unsigned int bytes =3D 0;
-	int i =3D 0;
+	int i =3D 0, max =3D 0;
+	unsigned int misalignment;
=20
 	while (i < num_channels) {
+		if (channels[i].bytes > max)
+			max =3D channels[i].bytes;
 		if (bytes % channels[i].bytes =3D=3D 0)
 			channels[i].location =3D bytes;
 		else
@@ -66,6 +69,16 @@ static unsigned int size_from_channelarray(struct iio_ch=
annel_info *channels, in
 		bytes =3D channels[i].location + channels[i].bytes;
 		i++;
 	}
+	/*
+	 * We wan't the data in next sample to also be properly aligned so
+	 * we'll add padding at the end if needed. TODO: should we use fixed
+	 * 8 byte alignment instead of the size of the biggest samnple?
+	 */
+	misalignment =3D bytes % max;
+	if (misalignment) {
+		printf("Misalignment %u. Adding Padding %u\n", misalignment,  max - misa=
lignment);
+		bytes +=3D max - misalignment;
+	}
=20
 	return bytes;
 }
--=20
2.41.0


--=20
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =3D]=20

--ubfT4fawWH07RnEo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmUNd3gACgkQeFA3/03a
ocWxrAf+OjGyX8noJscOhtQe6df8AGR7ncgBjoEJfcbetKg7x8In5EzuCgdp7PBr
lM7r/JvyzjTqbRGPSDaLfagdcxMBoBZGHYF9Kr0MeNwZjTwGOrp08XE8hfjgzzw6
rqt7YLw3hM/YY17Iy/JVmLeP/DHcxElSQkgoh4LN6wmrJUUhgel9oxiyyd2IXZi1
af1Svhcp4egFc8qd7LOn23YKWPZOdASQzY418oVJn0+MVkCQZ8j6Tg5VLtmrorsf
TReq9MVPhFVAuJ3qtjSxZJ34bzMEaxgOS3OrIT47DQ0wbams6vYtcvcEMGrByvX+
t8fK00BIB8eKUfgcSLcj7J50hKFHFA==
=aouA
-----END PGP SIGNATURE-----

--ubfT4fawWH07RnEo--

