Return-Path: <devicetree+bounces-82617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2E192523A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 06:28:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 213161F215AA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 04:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE77137762;
	Wed,  3 Jul 2024 04:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="U2eMVwCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A08BA2D
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 04:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719980591; cv=none; b=Erata6BzrjjFQqMB4RmXCAv6lP4lpITJZJt4f4jY4ml7KfQ3MECgR3ePSfEU6GzsJ4OjXmiiLql7zRm5Bu1U7gxHrUMQXeM5wTm0putshXsFDu05nJ1huiNZx8+wCWFRvbdsrx77ViQw2xIKKY3xikMrHonPegkffkKvf2buXdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719980591; c=relaxed/simple;
	bh=qMWsRWn5LuaC6LgtazpMqvqbTCtAn4qbCFbQjOTBJz8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Un6IGV0BjdifNEqJARnz1z0zzrk15r9Ek2qPp/AtaaCuAKdAdIz8mFLQ1xa/i8XbGGVjVIauld/OTzdIl9zdYXr+rJUs6biYKZTFPSuPCfxbtjdnfqp/cRXvryIgwxl9P853u6Kf9Yw1JLypeAu+ngGmPL3rRHSKxvHVmv5F3eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=U2eMVwCK; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-6c386a3ac43so472450a12.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 21:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1719980588; x=1720585388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Qh0bxoRrKKrojIzE1Yx2dLdv9DIZHWiiCmfLTqtPUw=;
        b=U2eMVwCKS99t3qj7QsAEBIS0kJpHCBKx3hbuvaQGHZPaYeGXmIgatjVPBvHHyZmMvi
         1GbBLtihJTvt+98C9Rpqa1PwGUmp9iGn7g6YUl0J/Yw63QRhYXqmxzu3YE9m0p6JOsQm
         EFonQru6V5sNIoK8f2hy0FhbcNvGCUEti3sMmP5mpwcT4kYc0XnjFrdc6/JzEkSl1ZaH
         llljvcXAjutxYkuf3zDqAI0HScfRy3Oi6l+8cV4j6lGk3dR4oGVu7uXDIqIkirnd2sY2
         lNypQ5Fqf/7S3iSjq7N0v5CX75OmwIlWXZlUqcov4M/4VOaSmuJa8CG8dMjkCUjdgfBf
         oCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719980588; x=1720585388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Qh0bxoRrKKrojIzE1Yx2dLdv9DIZHWiiCmfLTqtPUw=;
        b=Z+Qzytp8JOqIX8HzY+jTJ2XZ6XsOUexUBrq6jlPnyuYEBn6N9+n1Nc7+aWQaiUNRG2
         7aTUA3wZUUSXxxip9XLnFvmpbWDAyB0R73fKmZ483b/hUFbRJdFo60aBooDitIr2mV4x
         Y4ixY6Aikh8u2CWOanajw1Dx8HllT3qpqXorSO8z7vB6w0SjJ7xx7ax1xMBbVuwj6pQV
         olumXdsGdLLFKuNrBGs/QCHxaUbstF/A56DGEMGVnvi6fcZ8UB0MiTKLdL1ysdmz+hXV
         kvWxTgIEc/srMVKM+gju3DioCFsGOxkNs0aMnqohIf61kJjNHH7PosgEPpK6mPsIcua9
         QZfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmKBCTZgDUNYdrF4zGyGaprRuDjGbOnnM7a/87bjYcajKQsfl8WH+g8vvrNr2aKGObGLHdnJcv78noacJXiOxq3nuNNlYPfQbYpQ==
X-Gm-Message-State: AOJu0Yy3C8bFnRWKEG8BCKTgyH1vfElTE9K+QjDnmz6ot+whPx+d9JLl
	MUCXVRIPwBQZXWbX4KRwRzGvx/O+wJlcyEiCWF8CVzUYV++7a6FhIDnQVYOrOQ==
X-Google-Smtp-Source: AGHT+IEQhNu9FzaZ8lhgc/TCyuJFFUNNm+co3EFoMXWfFEKKEHbA/WeZxWm1s5lxTMuIwhTgussDfQ==
X-Received: by 2002:a17:902:c948:b0:1fb:12b4:79ef with SMTP id d9443c01a7336-1fb12b47cedmr12303315ad.0.1719980586678;
        Tue, 02 Jul 2024 21:23:06 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3e:250a:7d55:4ad6:87a3:5c5c? ([2401:4900:1f3e:250a:7d55:4ad6:87a3:5c5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac1549e81sm94411315ad.138.2024.07.02.21.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 21:23:06 -0700 (PDT)
Message-ID: <a2e1d415-b77a-4026-a02e-94c4331c9bef@beagleboard.org>
Date: Wed, 3 Jul 2024 09:52:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/3] Add generic Overlay for Grove Sunlight Sensor
To: Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Vaishnav M A <vaishnav@beagleboard.org>,
 Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic
 <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Michael Walle <mwalle@kernel.org>, Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>,
 Ayush Singh <ayushdevel1325@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240702164403.29067-1-afd@ti.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20240702164403.29067-1-afd@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/2/24 22:14, Andrew Davis wrote:

> Hello all,
>
> A new attempt at solving the long standing "add-on board" problem was
> recently posted[0]. The current out-of-tree solutions usually involve
> Device Tree Overlays. Recently, Overlays have started being accepted into
> the kernel repo, this makes now the perfect time to solve this issue.
> Here is my attempt at a generic solution.
>
> Problem statement
> -----------------
>
> The Device tree(DT) system provides hardware descriptions to the Linux
> kernel (or other DT compatible SW). When the hardware is modular this
> description becomes dynamic. For this we use DT Overlays which take a base
> hardware description and append the description of the add-on hardware.
> Due to the design of DT, these DT overlays are specific to a given base
> hardware board. The add-on itself is usually not specific to a single
> board. Some examples of add-on ecosystems to consider:
>
> Beaglebone Cape
> Raspberry Pi HAT
> MikroBUS Click Boards
> Seeed Grove
> SparkFun Qwiic
> etc..
>
> Some of these ecosystems already have more than a thousand(!) add-on boards.
> If a DT description needed to be written specific to each of the multitude
> of base boards that support each add-on, the combinatorial explosion would
> be unmanageable. We need to define a scheme that allow for creating and
> applying generic add-on overlays.
>
> Goals
> -----
>
> * Each add-on board should be described by only one DT overlay. That DT
> overlay should be generic enough to apply to the DT of any base board
> that supports that add-on.
>
> * Some base boards have multiple instances of a given add-ons connector
> port. An add-on's overlay must apply to any available connection port
> without modification to the overlay.
>
> * Some connectors are stackable, stacked application of overlays shall
> function as expected. Chained connectors from one ecosystem to another
> shall be supported also (i.g. This thing[1] which connects to a BeagleBone
> Cape connector and then exposes a number of Grove connectors).
>
> * We should reuse as much existing infrastructure as possible (ideally no
> changes should be needed). The basic application of DT overlays is well
> supported and documented.
>
> * An overlay for an add-on board that is not compatible with the base board
> shall fail to apply at application time, not silently later. Incompatibility
> includes add-ons which require a function from a pin for which the matching
> pin on the base board cannot provide. We see this with some HATs and Capes
> where they use non-standard muxing of pins that only work for some subset
> of base boards. For instance, the BeaglePlay's Grove connector supports
> Digital/UART/I2C functions but not "Analog". So any Grove module that uses
> Analog pins should fail to apply.
>
> * Nothing in this solution should preclude runtime application of these DT
> overlays. Hardware auto-detection and runtime DT modification are orthogonal
> problems.
>
> Solution
> --------
>
> This is a classic many-to-many problem, we propose to solve this the
> same as the database folks, with an associative(join) table like adapter
> overlay. We add an adapter overlay in-between the base board and the add-on. This
> adapter overlay prepares the base DTB for the application of an add-on
> targeting a specific connector. Adapting the base board's specifics to accept
> the generic connector names contained in the add-on overlay. There will
> be one adapter overlay per base board connector.
>
> We already have the infrastructure to implement these adapter overlays
> today. The DT overlay system makes use of a symbol table in the
> base DT and a fixup table in the overlay. The magic is in using the
> __fixups__ table to modify the __symbols__ table itself.
>
> Let's use the Grove connector[2] as an example. Grove is a good example
> target as it has
>
>   * Low pin count (2 signal pins keeps the example gasket DTBOs simple, everything here can be extended to any number of signal pins)
>   * Multiple connectors per base board
>   * Has an add-on board that exposes more add-on board connectors
>   * Each pin can have multiple functions depending on the base board
>   * Moderately sized collection of add-on boards which contain parts already supported in Linux/DT
>
> To make an overlay generic we need a standard name scheme which we
> use across base boards. For the connector pins the pinmux phandle
> shall be:
>
> <connector-name>_<pin-name>_mux_<pin-function>
>
> All capitalized to make it easy to identify that this name is
> not the final phandle name, but will instead be fixed during
> overlay application.
>
> Each pin will have a definition for each function it can take,
> so pin1 in the Grove ecosystem has 4 possible functions, and
> pin2 has the same, therefor 8 definitions are needed in the
> connector's adapter overlay:
>
>   /* Grove connector 0 Pin1 options */
> GROVE_PIN1_MUX_I2C_SCL = &grove_pins_i2c;
> GROVE_PIN1_MUX_DIGITAL = &grove_pins_digital;
> /* GROVE_PIN1_MUX_ANALOG not available on this pin on this connector on this board */
> ...
> GROVE_PIN2_MUX_UART_TX = &grove_pins_uart;
> etc..
>
> (see patch [2/3] for a complete example)
>
> By listing each pin/function combination separately we allow for add-on
> boards that only use a subset of pins, or mix pin functions
> (pin1->digital and pin2->uart_tx).
>
> This also means is if a given base board does not support some function
> on a connector pin, then it is not defined and application of an overlay
> which uses that pin/function will correctly fail as expected.
>
> For the parent provider phandle, we use a similar naming scheme:
>
> <connector-name>_<pin-name>_<pin-function>
>
> Note we list this per-pin. Even though one IP/bus may service multiple
> pins, we cannot know this in a generic way. For instance some boards
> may have all GPIO functions served by one controller, others may have
> some pins on different controllers.
>
> Patch [3/3] is a complete example overlay for an add-on board[3].
>
> So what does this all look like? Let's take an example of a BeaglePlay
> with two Grove connectors for which we have physically attached a
> Sunlight module to the first connector, and an Air Quality sensor to
> the second. Doing ahead of time command-line DT overlay application:
>
> ./fdtoverlay \
> 	-o output.dtb \
> 	-i k3-am625-beagleplay.dtb
> 		k3-am625-beagleplay-grove-connector0.dtbo grove-sunlight-sensor.dtbo \
> 		k3-am625-beagleplay-grove-connector1.dtbo grove-air-quality.dtbo
>
> We start with the base board, then apply the adapter overlay for the
> specific connector we are going to attach the add-on. The next add-on
> overlay applied will attach to the connector most recently applied.
> This can be continued as needed, simply apply the next connector's
> adapter overlay, then the next add-on, rinse, repeat.
>
> Note that the connector adapter overlay is board specific, but the add-on
> overlay is completely generic. It can be applied to any base board.
>
> ./fdtoverlay \
> 	-o output.dtb \
> 	-i bcm2837-rpi-3-b.dtb \
> 		grove-base-hat.dtbo \
> 			grove-base-hat-connector0.dtbo grove-sunlight-sensor.dtbo \
> 			grove-base-hat-connector1.dtbo grove-air-quality.dtbo
>
> Should work just the same for any board supporting that extender HAT,
> for instance the BeagleY-AI would be:
>
> ./fdtoverlay \
> 	-o output.dtb \
> 	-i k3-am67a-beagley-ai.dtb \
> 		grove-base-hat.dtbo \
> 			grove-base-hat-connector0.dtbo grove-sunlight-sensor.dtbo \
> 			grove-base-hat-connector1.dtbo grove-air-quality.dtbo \
> 			grove-base-hat-connector4.dtbo etc..
>
> All of the above works just the same at boot time (U-Boot overlay support)
> or runtime using the in-kernel runtime overlay support (when that is enabled).
> For connectors with board detection I'd expect the detector to be described
> in the base board connector node. On board identification, the adapter overlay
> for that connector would be loaded by the detector driver followed by th
> overlay for the identified board.
>
> Although this is an RFC, the patches in this series are functional and
> meet all the above goals. They require no additional DT schema nor
> kernel/tooling modifications. Nested adapters (add-ons on top of add-on
> connectors) require a small fix in DTC which will be sent separately.
>
> Open items
> ----------
>
> Variable cell count providers. The provider specifies the cell count
> and meaning. For GPIO this is handled very well, there is a standard
> 2 cell format (GPIO number and flags). Any device can request a
> controllers' 4th GPIO with active high output the exact same way for
> all controllers. Interrupts on the other hand have providers with one,
> two, and even three cells variations. There is no universal way to say
> "I want this controller's 4th IRQ line with rising edge triggering".
> These cells may need some level of indirection in the connector node
> itself to handle variable cell counts/meanings.
>
> Where to store the add-on overlay source files. These are not specific
> to any one board, nor even to one architecture. For now I put the
> grove-sunlight-sensor.dtb in arch/arm64/boot/dts/ti but it needs a
> better home acceptable by all boards.
>
> More testing, I currently have very few add-on boards to test with right
> now (but I did just put some on order). Hopefully I can get some more
> complex ones to really exercise this idea. Maybe a stack like the one
> in the 4th image here[4], a RPi HAT that exposes a couple MikroBUS
> connectors, that then have 4 Grove ports on that.
>
> This isn't perfect, but the Goals section should be applicable to any
> solution, and the adapter overlay concept hopefully can be reused as
> needed for whatever solution the community chooses.
>
> Thanks,
> Andrew
>
> [0] https://lore.kernel.org/linux-arm-kernel/20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org/
> [1] https://wiki.seeedstudio.com/Grove_Base_Cape_for_BeagleBone_v2/
> [2] https://wiki.seeedstudio.com/Grove_System/
> [3] https://wiki.seeedstudio.com/Grove-Sunlight_Sensor/
> [4] https://www.tindie.com/products/pmunts/mikrobus-grove-adapter-3/
>
> Andrew Davis (3):
>    arm64: dts: ti: k3-am625-beagleplay: Add Grove connector pinmux
>      options
>    arm64: dts: ti: k3-am625-beagleplay: Add Grove connector adapter
>      overlays
>    arm64: dts: ti: grove: Add Grove Sunlight Sensor overlay
>
>   arch/arm64/boot/dts/ti/Makefile               |  5 +++
>   .../boot/dts/ti/grove-sunlight-sensor.dtso    | 31 ++++++++++++++
>   .../k3-am625-beagleplay-grove-connector0.dtso | 41 +++++++++++++++++++
>   .../k3-am625-beagleplay-grove-connector1.dtso | 22 ++++++++++
>   .../arm64/boot/dts/ti/k3-am625-beagleplay.dts | 32 +++++++++++----
>   5 files changed, 124 insertions(+), 7 deletions(-)
>   create mode 100644 arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am625-beagleplay-grove-connector0.dtso
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am625-beagleplay-grove-connector1.dtso
>

Thanks for this work. I will try this setup for mikroBUS and report if I 
encounter any issues.

I do have a question: How and where should the documentation regarding 
these symbols live? Or is it possible to just use dt bindings for this?


Ayush Singh


