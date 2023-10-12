Return-Path: <devicetree+bounces-8300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A6D7C78A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9D041C210B5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 21:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753973E49D;
	Thu, 12 Oct 2023 21:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IOWpv2JC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB253AC0C
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 21:33:22 +0000 (UTC)
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D1CFA9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:33:21 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-57b68556d6dso723283eaf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697146400; x=1697751200; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2BYkIIVgUSUDIvsA7oyJJgebrxVB8pqETFUsWWaA5is=;
        b=IOWpv2JCe9JC4JjCyabZyXBCuX684ya0ywTyUwwZcrqk8O3vvY30+ETVxm7RfTCKWc
         aoCoZ98ZWzIhX6kHV/YJaeBRV2QJYKsk0ZM+HrgnPM7YG7xO3WMalImRFmBzJtydwEkn
         Fftj3S8mA4Chbc2ziDJvZEn0jWTyZjoeLrefo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697146400; x=1697751200;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2BYkIIVgUSUDIvsA7oyJJgebrxVB8pqETFUsWWaA5is=;
        b=VLLq/TtvhRqxQchpTsoADxWzs1cjbAe1ObatolgFWWd+8M8o57DZyGOeq8bPkVoN+Q
         KeqM62BN3RE9EdslQkVV6s7qk4fccacaVBBIIfRJmJuntiboLixYmQpsAZ6R+881i7Yf
         1WXa5QJ35QivQkEOKH+lB1zbhs3tdRf4SZuNrcHMKf/2YWJwhC1vtBWE0+mYAj1+/+yH
         dvnQ8YWct4j2rwcxtlWLh5NKBcQvWwza3D+ekEXlJcC9wCyEUD7JeO+WitoO4shW5twg
         vE9DecqsvV4dUSGF0HMWVKGy+mmDigsh09cUulK85bSevur8cn6lBu26flIVkNQuaCtv
         eqog==
X-Gm-Message-State: AOJu0YxRKpgPiejD39Trhv2xkm6sXU2RQgUZkPuvT6QRUDHsVM7tN05E
	u/mCDP++JvSh6vIwtIdDeULG3Wr+aXoPilRJxfGQew==
X-Google-Smtp-Source: AGHT+IEWHo3wYMQMcz7GsN7HjGYb7tuVwk/HPXskUKjfbq7nnE1N5b1naGdES5Ku76oGH6B7c1F9zA==
X-Received: by 2002:a05:6358:988d:b0:135:b4c:a490 with SMTP id q13-20020a056358988d00b001350b4ca490mr26095712rwa.10.1697146400420;
        Thu, 12 Oct 2023 14:33:20 -0700 (PDT)
Received: from google.com ([2401:fa00:1:10:7397:2561:ed13:bac8])
        by smtp.gmail.com with ESMTPSA id n14-20020a62e50e000000b0069319bfed42sm12141026pff.79.2023.10.12.14.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 14:33:19 -0700 (PDT)
Date: Fri, 13 Oct 2023 05:33:16 +0800
From: Chen-Yu Tsai <wenst@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Alexandre Mergnat <amergnat@baylibre.com>, matthias.bgg@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/4] arm64: dts: mediatek: cherry: Add platform
 thermal configuration
Message-ID: <20231012213316.GA2659196@google.com>
References: <20230424112523.1436926-1-angelogioacchino.delregno@collabora.com>
 <20230424112523.1436926-2-angelogioacchino.delregno@collabora.com>
 <31d1d1e4-2f75-bbbd-3e4b-6c796f2d39d1@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <31d1d1e4-2f75-bbbd-3e4b-6c796f2d39d1@baylibre.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Angelo

On Tue, Apr 25, 2023 at 01:46:42PM +0200, Alexandre Mergnat wrote:
> On 24/04/2023 13:25, AngeloGioacchino Del Regno wrote:
> > This platform has three auxiliary NTC thermistors, connected to the
> > SoC's ADC pins. Enable the auxadc in order to be able to read the
> > ADC values, add a generic-adc-thermal LUT for each and finally assign
> > them to the SoC's thermal zones.
> > 
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> > Tested-by: Chen-Yu Tsai <wenst@chromium.org>
> > Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >   .../boot/dts/mediatek/mt8195-cherry.dtsi      | 105 ++++++++++++++++++
> >   1 file changed, 105 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> > index 8ac80a136c37..4229f4f7dc2f 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> > @@ -114,6 +114,77 @@ ppvar_sys: regulator-ppvar-sys {
> >   		regulator-boot-on;
> >   	};
> > +	/* Murata NCP03WF104F05RL */
> > +	tboard_thermistor1: thermal-sensor-t1 {
> > +		compatible = "generic-adc-thermal";
> > +		#thermal-sensor-cells = <0>;
> > +		io-channels = <&auxadc 0>;
> > +		io-channel-names = "sensor-channel";
> > +		temperature-lookup-table = <	(-10000) 1553
> > +						(-5000) 1485
> > +						0 1406
> > +						5000 1317
> > +						10000 1219
> > +						15000 1115
> > +						20000 1007
> > +						25000 900
> > +						30000 796
> > +						35000 697
> > +						40000 605
> > +						45000 523
> > +						50000 449
> > +						55000 384
> > +						60000 327
> > +						65000 279
> > +						70000 237
> > +						75000 202
> > +						80000 172
> > +						85000 147
> > +						90000 125
> > +						95000 107
> > +						100000 92
> > +						105000 79
> > +						110000 68
> > +						115000 59
> > +						120000 51
> > +						125000 44>;
> > +	};
> > +
> > +	tboard_thermistor2: thermal-sensor-t2 {
> > +		compatible = "generic-adc-thermal";
> > +		#thermal-sensor-cells = <0>;
> > +		io-channels = <&auxadc 1>;
> > +		io-channel-names = "sensor-channel";
> > +		temperature-lookup-table = <	(-10000) 1553
> > +						(-5000) 1485
> > +						0 1406
> > +						5000 1317
> > +						10000 1219
> > +						15000 1115
> > +						20000 1007
> > +						25000 900
> > +						30000 796
> > +						35000 697
> > +						40000 605
> > +						45000 523
> > +						50000 449
> > +						55000 384
> > +						60000 327
> > +						65000 279
> > +						70000 237
> > +						75000 202
> > +						80000 172
> > +						85000 147
> > +						90000 125
> > +						95000 107
> > +						100000 92
> > +						105000 79
> > +						110000 68
> > +						115000 59
> > +						120000 51
> > +						125000 44>;
> > +	};
> > +
> >   	usb_vbus: regulator-5v0-usb-vbus {
> >   		compatible = "regulator-fixed";
> >   		regulator-name = "usb-vbus";
> > @@ -260,6 +331,10 @@ &gpu {
> >   	mali-supply = <&mt6315_7_vbuck1>;
> >   };
> > +&auxadc {
> 
> Can you put it in alphabetical order please. ?

I believe this patch needs to be respun?

> > +	status = "okay";
> > +};
> > +
> >   &i2c0 {
> >   	status = "okay";
> > @@ -1098,6 +1173,36 @@ mt6315_7_vbuck1: vbuck1 {
> >   	};
> >   };
> > +&thermal_zones {
> > +	soc-area-thermal {
> > +		polling-delay = <1000>;
> > +		polling-delay-passive = <250>;
> > +		thermal-sensors = <&tboard_thermistor1>;
> > +
> > +		trips {
> > +			trip-crit {
> > +				temperature = <84000>;
> > +				hysteresis = <1000>;
> > +				type = "critical";
> > +			};
> > +		};
> > +	};
> > +
> > +	pmic-area-thermal {
> > +		polling-delay = <1000>;
> > +		polling-delay-passive = <0>;
> > +		thermal-sensors = <&tboard_thermistor2>;
> > +
> > +		trips {
> > +			trip-crit {
> > +				temperature = <84000>;
> > +				hysteresis = <1000>;
> > +				type = "critical";
> > +			};
> > +		};
> > +	};
> > +};
> > +
> >   &u3phy0 {
> >   	status = "okay";
> >   };
> 
> After that:
> Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
> 
> Regards,
> Alexandre
> 

