Return-Path: <devicetree+bounces-1465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7236A7A6753
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F3861C2097D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3743B788;
	Tue, 19 Sep 2023 14:53:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0993B780
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 14:53:47 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C52FBE;
	Tue, 19 Sep 2023 07:53:44 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rql5G0QwDz67VkC;
	Tue, 19 Sep 2023 22:52:50 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 19 Sep
 2023 15:53:41 +0100
Date: Tue, 19 Sep 2023 15:53:40 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>
CC: Jonathan Cameron <jic23@kernel.org>, Matti Vaittinen
	<matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Angel Iglesias <ang.iglesiasg@gmail.com>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Andreas Klinger <ak@it-klinger.de>,
	Benjamin Bara <bbara93@gmail.com>, <linux-iio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] iio: pressure: Support ROHM BU1390
Message-ID: <20230919155340.0000076f@Huawei.com>
In-Reply-To: <c987f401-81c4-00e5-51a7-88a6a38a2ca2@gmail.com>
References: <cover.1694760170.git.mazziesaccount@gmail.com>
	<f378a401cec4fb0b9287b52ab159f00dd77569a6.1694760170.git.mazziesaccount@gmail.com>
	<20230917113518.7c4bb1a0@jic23-huawei>
	<a5c19874-32ba-60bf-6e72-9139a2873c7e@gmail.com>
	<c987f401-81c4-00e5-51a7-88a6a38a2ca2@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100001.china.huawei.com (7.191.160.183) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 19 Sep 2023 14:28:29 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> On 9/18/23 15:56, Matti Vaittinen wrote:
> > On 9/17/23 13:35, Jonathan Cameron wrote: =20
> >> On Fri, 15 Sep 2023 09:56:19 +0300
> >> Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> >> =20
> >>> Support for the ROHM BM1390 pressure sensor. The BM1390GLV-Z can meas=
ure
> >>> pressures ranging from 300 hPa to 1300 hPa with configurable measurem=
ent
> >>> averaging and internal FIFO. The sensor does also provide temperature
> >>> measurements.
> >>>
> >>> Sensor does also contain IIR filter implemented in HW. The data-sheet
> >>> says the IIR filter can be configured to be "weak", "middle" or
> >>> "strong". Some RMS noise figures are provided in data sheet but no
> >>> accurate maths for the filter configurations is provided. Hence, the =
IIR
> >>> filter configuration is not supported by this driver and the filter is
> >>> configured to the "middle" setting (at least not for now).
> >>>
> >>> The FIFO measurement mode is only measuring the pressure and not the
> >>> temperature. The driver measures temperature when FIFO is flushed and
> >>> simply uses the same measured temperature value to all reported
> >>> temperatures. This should not be a problem when temperature is not
> >>> changing very rapidly (several degrees C / second) but allows users to
> >>> get the temperature measurements from sensor without any additional=20
> >>> logic.
> >>>
> >>> This driver allows the sensor to be used in two muitually exclusive=20
> >>> ways,
> >>>
> >>> 1. With trigger (data-ready IRQ).
> >>> In this case the FIFO is not used as we get data ready for each=20
> >>> collected
> >>> sample. Instead, for each data-ready IRQ we read the sample from sens=
or
> >>> and push it to the IIO buffer.
> >>>
> >>> 2. With hardware FIFO and watermark IRQ.
> >>> In this case the data-ready is not used but we enable watermark IRQ. =
At
> >>> each watermark IRQ we go and read all samples in FIFO and push them=20
> >>> to the
> >>> IIO buffer.
> >>>
> >>> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com> =20
>=20
> ...
>=20
> >>> +
> >>> +static const unsigned long bm1390_scan_masks[] =3D {
> >>> +=A0=A0=A0 BIT(BM1390_CHAN_PRESSURE) | BIT(BM1390_CHAN_TEMP), 0 =20
> >> Why?=A0 Doesn't look hard to support just one or the other?
> >> Normally we only do this sort of limitation when there is a heavily
> >> optimized read routine for a set of channels and it is better
> >> to grab them all and throw away the ones we don't care about.
> >> That doesn't seem to be true here. So if the fifo grabbed both
> >> temp and pressure it would makes sense here, but doesn't seem
> >> like it does. =20
> >=20
> > I have a feeling I have misunderstood how this mask works. I have=20
> > assumed all the channels with corresponding mask bit _can_ be enabled=20
> > simultaneously, but I have not understood they _must_ all be enabled. I=
=20
> > think I must go back studying this, but if all channels really _must_ b=
e=20
> > enabled, then you are correct. It actually makes a lot of sense to=20
> > support the pressure values alone, as, according to the data-sheet, the=
=20
> > HW is doing a "MEMS temperature compensation" to the pressure values.=20
> > So, my assuimption is the temperature data may not be required to be=20
> > captured.
> >=20
> > This also means I should revise the scan masks for the BU27008, BU27010=
=20
> > and BU27034 light sensors as I don't think all the users want all the=20
> > channels enabled. I wonder how I have not noticed any problems when I=20
> > tested those things - did I really always enable all the channels...? @=
_@
> >=20
> > Anyways, Thanks. =20
>=20
> Hi Jonathan,
>=20
> There's something in IIO scan_masks / buffer demuxing that I don't quite=
=20
> understand. I noticed following things:
>=20
> 1) Strict available scan mask check seems to be in use only for=20
> INDIO_BUFFER_HARDWARE stuff.
>=20
> https://elixir.bootlin.com/linux/v6.6-rc2/source/drivers/iio/industrialio=
-buffer.c#L881
>=20

That is referring to the fact that you can't start the buffer if it
doesn't match (because we can't mess with the data stream in
that type of buffer as we don't necessarily see it in software!)

> So, the:
>=20
>  >>> +static const unsigned long bm1390_scan_masks[] =3D {
>  >>> +    BIT(BM1390_CHAN_PRESSURE) | BIT(BM1390_CHAN_TEMP), 0 =20
>=20
> is not exclusive for BM1390 as long as it is not setting the=20
> INDIO_BUFFER_HARDWARE.
>=20
> My test seems to agree with the code:
>=20
> // Only enable the temperature:
> root@arm:/sys/bus/iio/devices/iio:device0# echo 1 >=20
> scan_elements/in_temp_en
>=20
> // Run the geneeric buffer without -a:
> root@arm:/sys/bus/iio/devices/iio:device0# /iio_generic_buffer -c 20 -N=20
> 0 -t bm1390data-rdy-dev0
> iio device number being used is 0
> iio trigger number being used is 0
> /sys/bus/iio/devices/iio:device0 bm1390data-rdy-dev0
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 22968.750000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23000.000000
> 23031.250000
> 23000.000000
> 23000.000000
> root@arm:/sys/bus/iio/devices/iio:device0#

>=20
> In above case the temperature values and only the temperature values=20
> were shown. I must admit I did not spend enough time with the=20
> iio_generic_buffer.c or IIO demuxing code to really understand all the=20
> details (I got headache very quickly ;) ). I still believe the=20
> iio_generic_buffer expects to see only the enabled channel data in the=20
> buffer - so, it seems to me the kernel is also only adding the enabled=20
> channel data to the buffer. Also, judging the values, the demuxing is=20
> correctly extracting the temperature data from data the driver pushes her=
e:
>=20
> iio_push_to_buffers_with_timestamp(idev, &data->buf, data->timestamp);
>=20
> The bm1390 driver as sent in v2 does not do demuxing but always pushes=20
> whole chunk of data and trusts IIO to do demuxing.

Yup. That should work.  But in this case you can trivially decide not to re=
ad
or fill in the temperature and hence save some bus cycles.

>=20
> 2) I noticed the 'available_scan_masks' was marked as an optional field.=
=20
> So, I think that if there is no restrictions to which of the channels=20
> can be enabled, then we can omit setting it. This is what I tried.
>=20
> It appears that when we do not populate the 'available_scan_masks' with t=
he:
>  >>> +static const unsigned long bm1390_scan_masks[] =3D {
>  >>> +    BIT(BM1390_CHAN_PRESSURE) | BIT(BM1390_CHAN_TEMP), 0 =20
>=20
> things change. When I tested enabling only temperature and ran the=20
> iio_generic_buffer -c 20 -N 0 -t bm1390data-rdy-dev0 - the reported=20
> values seemed completely random.

You need to pack the data correctly yourself in the driver.
So it adds small amount of code complexity but potentially saves bus
traffic.


>=20
> When I initialized the pressure data in driver:
> data->buf.pressure =3D 1;
> before doing the:
> iio_push_to_buffers_with_timestamp(idev, &data->buf, data->timestamp);
>=20
> I saw following:
>=20
> root@arm:/# cd /sys/bus/iio/devices/iio\:device0
> root@arm:/sys/bus/iio/devices/iio:device0# echo 1 >=20
> scan_elements/in_temp_en
> root@arm:/sys/bus/iio/devices/iio:device0# /iio_generic_buffer -c 20 -N=20
> 0 -t bm1390data-rdy-dev0
> iio device number being used is 0
> iio trigger number being used is 0
> /sys/bus/iio/devices/iio:device0 bm1390data-rdy-dev0
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> 8000.000000
> root@arm:/sys/bus/iio/devices/iio:device0# cat in_temp_scale
> 31.250000
>=20
> If we calculate 8000/31.250000 we will get value 256. This looks like=20
> value '1' in BE16 format.

>=20
> Based on this experimenting (and headache obtained from reading the=20
> demuxing code) - the IIO framework does not do channel demuxing if the=20
> 'available_scan_masks' is not given? To me this was somewhat unexpected.

Yes.  If you don't tell it what channel setups are available (note there can
be lots) you are saying that we support any random combination and have
to do the data packing by hand.

>=20
> Finally, when the watermark IRQ is used, we can't omit reading the=20
> pressure data because clearing the WMI is done based on the pressure=20
> data in FIFO.

Hmm. That is a good reason to keep the available scan masks set.
Add a comment on that next to the mask.

>=20
> So, I would propose we do:
>=20
> static const unsigned long bm1390_scan_masks[] =3D {
> 	BIT(BM1390_CHAN_PRESSURE) | BIT(BM1390_CHAN_TEMP),
> 	BIT(BM1390_CHAN_PRESSURE), 0

Makes sense given need to read the pressure channel.
>=20
> which better reflects what the hardware is capable of - and, unless I am=
=20
> missing something, also allows us to offload the buffer demuxing to the I=
IO.
>=20
> Still, as mentioned in 1), the
>=20
>  >>> +static const unsigned long bm1390_scan_masks[] =3D {
>  >>> +    BIT(BM1390_CHAN_PRESSURE) | BIT(BM1390_CHAN_TEMP), 0 =20
>=20
> does not seem to prevent enabling only the temperature channel - so in=20
> the driver buffer handler we still must unconditionally read the=20
> pressure data regardles the active_scan_mask.

active_scan_mask should match the above - it's separate from what is enable=
d.
active_scan_mask is on the data capture side of the demux - the buffers
are then fed repacked data reflecting what is enabled.

>=20
> >> =20
> >>> +=A0=A0=A0=A0 * called as a result of a read operation from userspace=
 and hence
> >>> +=A0=A0=A0=A0 * before the watermark interrupt was triggered, take a =
timestamp
> >>> +=A0=A0=A0=A0 * now. We can fall anywhere in between two samples so t=
he error=20
> >>> in this
> >>> +=A0=A0=A0=A0 * case is at most one sample period.
> >>> +=A0=A0=A0=A0 * We need to have the IRQ disabled or we risk of messin=
g-up
> >>> +=A0=A0=A0=A0 * the timestamps. If we are ran from IRQ, then the
> >>> +=A0=A0=A0=A0 * IRQF_ONESHOT has us covered - but if we are ran by the
> >>> +=A0=A0=A0=A0 * user-space read we need to disable the IRQ to be on a=
 safe
> >>> +=A0=A0=A0=A0 * side. We do this usng synchronous disable so that if =
the
> >>> +=A0=A0=A0=A0 * IRQ thread is being ran on other CPU we wait for it t=
o be
> >>> +=A0=A0=A0=A0 * finished. =20
> >>
> >> That irq disable is potentially expensive.
> >> Why not just pass the current timestamp into the __bm1390_fifo_flush >
> >> The locks should prevent other races I think.. =20
> >=20
> > Gah. I hate you Jonathan ;) (Not really!)
> >=20
> > Actually, thank you (as always) for pointing this out. I don't instantl=
y=20
> > see why it wouldn't work, but going throught the IRQ races is never=20
> > trivial (for me). It's work I've learned not to do at afternoon as my=20
> > brains work better at the morning :) So, I will still go through this a=
s=20
> > a first thing tomorrow when I start my work day... =20
>=20
> After staring this for a while, I see no reason why we couldn't do as=20
> you suggested. Thanks! It really improves this :)

No problem.

Jonathan

>=20
> Yours,
> 	-- Matti
>=20


