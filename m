Return-Path: <devicetree+bounces-216497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 876DBB5501F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 293F048724D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D396530E853;
	Fri, 12 Sep 2025 13:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="Eg5YYi1W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F4F30DD0B
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757685447; cv=none; b=lpc4wVKc7atU83PXj2m5vWPnJ+NH1YA/tTyT3is/mcKOt1jA8dJvkOikyt/B6Et+5wkN06rZlHJMlsV51t0qgRTk3BX2+5TQO+h5DVx0DMkxMgrbQHVJ3ud4xSk212xlCtcD/cnGwjS9la+2c6KCuLYu/F2vXAB1Nq7KACJXGpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757685447; c=relaxed/simple;
	bh=q/Hh5I34yDz0WmFVV9xJhfzUeOjH6rU9DLeUEolDe70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TkkfLPwAzdeEzYIUXfsBhzgRWkmQ32b6KP8xdqzB/YICarXUx/qUeT+s1MQsj7I+G9kVu/VGhoAM8Ly1zLyiGPt8SIC/9TVcqYVi7rgSZKQwcGRCYnD1/d6mf52Z18Ri+uiBZxPsxwb+czDw8hG2NpUHJVh//kotzAn1Z/0RU9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=Eg5YYi1W; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45b9c35bc0aso16699225e9.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1757685442; x=1758290242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6frLUwraP/dsJ5viKqpYQ3We+ljVfFWPy93r/pMgbKo=;
        b=Eg5YYi1WBFgvVAVq3e80b/3+WbyFv5RghkmX+3PAkw4PZ6oCtRUqkOq9lN5AE5KkZu
         ZgR+Oh+LhwCBQ8Gw4OrCMAU7p8mZWGLID+vYtb5323mmMnimayEEWveUShLOqqauP087
         +k2FJ8k8XGF32EXkRdr/GHiwjT5mAhRZt/JTZUQiIwj78ZC1CJY/iMR+0ofq+FndqHWe
         5fCVzijZi3HLWDCxZWNkad+OF5vKjeXpB3cKxw0tG4y10LxpDS6CPPa89OAiz5K2JiZL
         S1TiLgsWs0tKl683DfObz6QqaZ28fu3ZDjTGBItpQwMNdSNB/Xdrvg88C+YP7WlL/hyl
         V3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757685442; x=1758290242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6frLUwraP/dsJ5viKqpYQ3We+ljVfFWPy93r/pMgbKo=;
        b=EArmyir4duH6sS+Du+pjbm/YpLfiC0f7gGqYr12LCTtzL294geFxLu1OGT0jA+plEb
         G2k5d3EBmlGE5OPnjYVnw9QCi2iXXxhkz+LEOz/mh5dbIlHU76UnvpDbVOPIMqsIT41u
         nrx5CK7a7A5g9FJwDdiEZ09IohoIRQiQLMbluSc708XKpqXa2kEKYWKQdMFwZNScliOj
         38SA0BOvPujglpU7iKlsmPp4q7GdumzCHwhDnrW1wGgcWrD18/72eFjOpODg9SIcwCso
         B6M1P0pGakiBi+jKm/NCKhmE90yYX8EuMyP7b+XyLYjnWbvU9lKFQ8YUa0FAulIsKdPK
         0x/w==
X-Forwarded-Encrypted: i=1; AJvYcCVRdqq5YbmDZkSX4bDQPWnC+56KthI1jgp5xiAAZnCcZk5mJQSdgx/TfPJri7gYE6TzW+8Qg+x6U+MC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0kGWNIgHbMAVfxQKIpOetTakqKZW8naJrD1WAkmG3nYzSYlRf
	IQb0Co1l+DLLKaf36Q3okwqqOOcqGktIkeByojNIGRhZTh95F3o4w54jIEw5zgiVgR4=
X-Gm-Gg: ASbGncuafXDX9FZVvIQS7RTF+nkRdLHsh2RADMacmiSfTlXqWvpPSswarNx/qGHHb27
	KsnkC7DEho9erBUBB9/6ryY4nnYOTStrdf/asE3m/yBz7Fc/fmObyH9CZw2Vts3XfNA4uDOQnkG
	wg3hzMk3kApZgbagLZfScdy4eO8G7vsyQ8DE50+TclatrlPdT0/6INBDR4E4WdUmy2qPF/Qzuk3
	TSyIZiRfaZfOGZKoVm8DgG/h1C1xiwrsQs9obFof0zEqHgv9SWb5OLQrU9N+KNC6wIXVPZ6pAmD
	6p508dB438MNizHNrLp1oXh32leHa/y4D/jNXTMSZkPVWLKebRyJxau6NfIeJeRoDtWxEfDxzwJ
	hDsNHn3lVzrICJ3xeev8Oy+tPjPVOwyiIXnmiOaxUoQPVCRREzfa+eunO/rGmS1msJ91zcGwhKO
	AkZoLTq2hgIQ5Qx/NI5QJ9SBl2
X-Google-Smtp-Source: AGHT+IGwYgVR37o40FWeiEm9lb5JrhGu7uBGN03bqHvT0DSdhc73p0i/jh3+eMbjHpm8cv1vUG631A==
X-Received: by 2002:a05:600c:604c:b0:45c:b6b1:29a7 with SMTP id 5b1f17b1804b1-45f211d67bdmr27463865e9.16.1757685441583;
        Fri, 12 Sep 2025 06:57:21 -0700 (PDT)
Received: from ?IPV6:2a02:1807:2a00:3400:957d:e90c:a9e2:929a? ([2a02:1807:2a00:3400:957d:e90c:a9e2:929a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0156d206sm68268585e9.5.2025.09.12.06.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 06:57:21 -0700 (PDT)
Message-ID: <b0c227b4-9233-4743-9c4e-0d775d4047bc@hammernet.be>
Date: Fri, 12 Sep 2025 15:57:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: spacemit: add UART pinctrl combinations
To: Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linux.dev, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250903145334.425633-1-hendrik.hamerlinck@hammernet.be>
 <20250911112251-GYA1216475@gentoo.org>
Content-Language: en-US
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
In-Reply-To: <20250911112251-GYA1216475@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Yixun,

Thank you for reviewing.

On 9/11/25 13:22, Yixun Lan wrote:
> Hi Hendrik,
>
> On 16:53 Wed 03 Sep     , Hendrik Hamerlinck wrote:
>> This adds UART pinctrl configurations based on the SoC datasheet and the
>> downstream Bianbu Linux tree. The drive strength values were taken from
>> the downstream implementation, which uses medium drive strength.
>>
>> For convenience, the board DTS files have been updated to include all
>> UART instances with their possible pinmux options in a disabled state.
>>
>> Tested this locally on both Orange Pi RV2 and Banana Pi BPI-F3 boards. 
>>
>> Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
>> ---
>>  .../boot/dts/spacemit/k1-bananapi-f3.dts      |  18 ++
>>  .../boot/dts/spacemit/k1-orangepi-rv2.dts     |  18 ++
>>  arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 276 +++++++++++++++++-
>>  3 files changed, 309 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> index 6013be258542..661d47d1ce9e 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> @@ -49,3 +49,21 @@ &uart0 {
>>  	pinctrl-0 = <&uart0_2_cfg>;
>>  	status = "okay";
>>  };
>> +
>> +&uart5 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart5_3_cfg>;
>> +	status = "disabled";
>> +};
>> +
>> +&uart8 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart8_2_cfg>;
>> +	status = "disabled";
>> +};
>> +
>> +&uart9 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart9_2_cfg>;
>> +	status = "disabled";
>> +};
> all of uart5, 8, 9 come from 26-pins port, the functionaly is
> very likely depending on the final use case.. and I get your idea
> of adding those nodes but with "disabled" status..
>
> my suggestion is to not add them, or leave to users to add separated
> dtbo (Device tree overlays) files in the future

Fair enough, I was already doubting adding them. Most other .dts files
don't include them either. I’ll remove them in the next version.

>
> but I'm ok to complete uart pinctrl info in the dtsi file
>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
>> index 337240ebb7b7..dc45b75b1ad4 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
>> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
>> @@ -38,3 +38,21 @@ &uart0 {
>>  	pinctrl-0 = <&uart0_2_cfg>;
>>  	status = "okay";
>>  };
>> +
>> +&uart5 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart5_3_cfg>;
>> +	status = "disabled";
>> +};
>> +
>> +&uart8 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart8_2_cfg>;
>> +	status = "disabled";
>> +};
>> +
>> +&uart9 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart9_2_cfg>;
>> +	status = "disabled";
>> +};
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> index 381055737422..43425530b5bf 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> @@ -11,12 +11,282 @@
>>  #define K1_GPIO(x)	(x / 32) (x % 32)
>>  
>>  &pinctrl {
>> +	uart0_0_cfg: uart0-0-cfg {
>> +		uart0-0-pins {
>> +			pinmux = <K1_PADCONF(104, 3)>,	/* uart0_txd */
>> +				 <K1_PADCONF(105, 3)>;	/* uart0_rxd */
>> +			power-source = <3300>;
>> +			bias-pull-up;
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>> +	uart0_1_cfg: uart0-1-cfg {
>> +		uart0-1-pins {
>> +			pinmux = <K1_PADCONF(108, 1)>,	/* uart0_txd */
>> +				 <K1_PADCONF(80, 3)>;	/* uart0_rxd */
>> +			power-source = <3300>;
>> +			bias-pull-up;
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>>  	uart0_2_cfg: uart0-2-cfg {
>>  		uart0-2-pins {
>> -			pinmux = <K1_PADCONF(68, 2)>,
>> -				 <K1_PADCONF(69, 2)>;
>> +			pinmux = <K1_PADCONF(68, 2)>,	/* uart0_txd */
>> +				 <K1_PADCONF(69, 2)>;	/* uart0_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>>  
>> -			bias-pull-up = <0>;
>> +	uart2_0_cfg: uart2-0-cfg {
>> +		uart2-0-pins {
>> +			pinmux = <K1_PADCONF(21, 1)>,	/* uart2_txd */
>> +				 <K1_PADCONF(22, 1)>,	/* uart2_rxd */
>> +				 <K1_PADCONF(23, 1)>,	/* uart2_cts */
>> +				 <K1_PADCONF(24, 1)>;	/* uart2_rts */
> I think for group has cts, rts pins, it's more practical to
> have two separated cfgs, so the final application can choose to 
> request two pins (tx, rx), or four pins (tx, tx, cts, rts)..
> (I believe the hardware should support this)
>
> something like this:
>
> uart2_0_cfg: uart2-0-cfg {
> 	uart2-0-pins {
> 		pinmux = <K1_PADCONF(21, 1)>,	/* uart2_txd */
> 			 <K1_PADCONF(22, 1)>,	/* uart2_rxd */
> 	};
> };
>
> uart2_0_cts_rts_cfg: uart2-0-cts-rts-cfg {
> 	uart2-0-pins {
> 		pinmux = <K1_PADCONF(23, 1)>,	/* uart2_cts */
> 			 <K1_PADCONF(24, 1)>,	/* uart2_rts */
> 	};
> };
>
> &uart2 { 
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&uart2_0_cfg>, <&uart2_0_cts_rts_cfg>;
> };
This sounds like good idea. There were some weird pin sequences, listing
them that way would result in a better structure (f.e. uart9_1_cfg).
The hardware seems to deal with it just fine.
I will update it this way in the next version.

>
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart3_0_cfg: uart3-0-cfg {
>> +		uart3-0-pins {
>> +			pinmux = <K1_PADCONF(81, 2)>,	/* uart3_txd */
>> +				 <K1_PADCONF(82, 2)>,	/* uart3_rxd */
>> +				 <K1_PADCONF(83, 2)>,	/* uart3_cts */
>> +				 <K1_PADCONF(84, 2)>;	/* uart3_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart3_1_cfg: uart3-1-cfg {
>> +		uart3-1-pins {
>> +			pinmux = <K1_PADCONF(18, 2)>,	/* uart3_txd */
>> +				 <K1_PADCONF(19, 2)>,	/* uart3_rxd */
>> +				 <K1_PADCONF(20, 2)>,	/* uart3_cts */
>> +				 <K1_PADCONF(21, 2)>;	/* uart3_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart3_2_cfg: uart3-2-cfg {
>> +		uart3-2-pins {
>> +			pinmux = <K1_PADCONF(53, 4)>,	/* uart3_txd */
>> +				 <K1_PADCONF(54, 4)>,	/* uart3_rxd */
>> +				 <K1_PADCONF(55, 4)>,	/* uart3_cts */
>> +				 <K1_PADCONF(56, 4)>;	/* uart3_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart4_0_cfg: uart4-0-cfg {
>> +		uart4-0-pins {
>> +			pinmux = <K1_PADCONF(100, 4)>,	/* uart4_txd */
>> +				 <K1_PADCONF(101, 4)>;	/* uart4_rxd */
>> +			power-source = <3300>;
>> +			bias-pull-up;
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>> +	uart4_1_cfg: uart4-1-cfg {
>> +		uart4-1-pins {
>> +			pinmux = <K1_PADCONF(81, 3)>,	/* uart4_cts */
>> +				 <K1_PADCONF(82, 3)>,	/* uart4_rts */
>> +				 <K1_PADCONF(83, 3)>,	/* uart4_txd */
>> +				 <K1_PADCONF(84, 3)>;	/* uart4_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart4_2_cfg: uart4-2-cfg {
>> +		uart4-2-pins {
>> +			pinmux = <K1_PADCONF(23, 2)>,	/* uart4_txd */
>> +				 <K1_PADCONF(24, 2)>;	/* uart4_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart4_3_cfg: uart4-3-cfg {
>> +		uart4-3-pins {
>> +			pinmux = <K1_PADCONF(33, 2)>,	/* uart4_txd */
>> +				 <K1_PADCONF(34, 2)>,	/* uart4_rxd */
>> +				 <K1_PADCONF(35, 2)>,	/* uart4_cts */
>> +				 <K1_PADCONF(36, 2)>;	/* uart4_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart4_4_cfg: uart4-4-cfg {
>> +		uart4-4-pins {
>> +			pinmux = <K1_PADCONF(111, 4)>,	/* uart4_txd */
>> +				 <K1_PADCONF(112, 4)>,	/* uart4_rxd */
>> +				 <K1_PADCONF(113, 4)>,	/* uart4_cts */
>> +				 <K1_PADCONF(114, 4)>;	/* uart4_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart5_0_cfg: uart5-0-cfg {
>> +		uart5-0-pins {
>> +			pinmux = <K1_PADCONF(102, 3)>,	/* uart5_txd */
>> +				 <K1_PADCONF(103, 3)>;	/* uart5_rxd */
>> +			power-source = <3300>;
>> +			bias-pull-up;
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>> +	uart5_1_cfg: uart5-1-cfg {
>> +		uart5-1-pins {
>> +			pinmux = <K1_PADCONF(25, 2)>,	/* uart5_txd */
>> +				 <K1_PADCONF(26, 2)>,	/* uart5_rxd */
>> +				 <K1_PADCONF(27, 2)>,	/* uart5_cts */
>> +				 <K1_PADCONF(28, 2)>;	/* uart5_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart5_2_cfg: uart5-2-cfg {
>> +		uart5-2-pins {
>> +			pinmux = <K1_PADCONF(42, 2)>,	/* uart5_txd */
>> +				 <K1_PADCONF(43, 2)>,	/* uart5_rxd */
>> +				 <K1_PADCONF(44, 2)>,	/* uart5_cts */
>> +				 <K1_PADCONF(45, 2)>;	/* uart5_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart5_3_cfg: uart5-3-cfg {
>> +		uart5-3-pins {
>> +			pinmux = <K1_PADCONF(70, 4)>,	/* uart5_txd */
>> +				 <K1_PADCONF(71, 4)>,	/* uart5_rxd */
>> +				 <K1_PADCONF(72, 4)>,	/* uart5_cts */
>> +				 <K1_PADCONF(73, 4)>;	/* uart5_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart6_0_cfg: uart6-0-cfg {
>> +		uart6-0-pins {
>> +			pinmux = <K1_PADCONF(85, 2)>,	/* uart6_cts */
>> +				 <K1_PADCONF(86, 2)>,	/* uart6_txd */
>> +				 <K1_PADCONF(87, 2)>,	/* uart6_rxd */
>> +				 <K1_PADCONF(90, 2)>;	/* uart6_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart6_1_cfg: uart6-1-cfg {
>> +		uart6-1-pins {
>> +			pinmux = <K1_PADCONF(0, 2)>,	/* uart6_txd */
>> +				 <K1_PADCONF(1, 2)>,	/* uart6_rxd */
>> +				 <K1_PADCONF(2, 2)>,	/* uart6_cts */
>> +				 <K1_PADCONF(3, 2)>;	/* uart6_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart6_2_cfg: uart6-2-cfg {
>> +		uart6-2-pins {
>> +			pinmux = <K1_PADCONF(56, 2)>,	/* uart6_txd */
>> +				 <K1_PADCONF(57, 2)>;	/* uart6_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart7_0_cfg: uart7-0-cfg {
>> +		uart7-0-pins {
>> +			pinmux = <K1_PADCONF(88, 2)>,	/* uart7_txd */
>> +				 <K1_PADCONF(89, 2)>;	/* uart7_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart7_1_cfg: uart7-1-cfg {
>> +		uart7-1-pins {
>> +			pinmux = <K1_PADCONF(4, 2)>,	/* uart7_txd */
>> +				 <K1_PADCONF(5, 2)>,	/* uart7_rxd */
>> +				 <K1_PADCONF(6, 2)>,	/* uart7_cts */
>> +				 <K1_PADCONF(7, 2)>;	/* uart7_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart8_0_cfg: uart8-0-cfg {
>> +		uart8-0-pins {
>> +			pinmux = <K1_PADCONF(82, 4)>,	/* uart8_txd */
>> +				 <K1_PADCONF(83, 4)>;	/* uart8_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart8_1_cfg: uart8-1-cfg {
>> +		uart8-1-pins {
>> +			pinmux = <K1_PADCONF(8, 2)>,	/* uart8_txd */
>> +				 <K1_PADCONF(9, 2)>,	/* uart8_rxd */
>> +				 <K1_PADCONF(10, 2)>,	/* uart8_cts */
>> +				 <K1_PADCONF(11, 2)>;	/* uart8_rts */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart8_2_cfg: uart8-2-cfg {
>> +		uart8-2-pins {
>> +			pinmux = <K1_PADCONF(75, 4)>,	/* uart8_txd */
>> +				 <K1_PADCONF(76, 4)>,	/* uart8_rxd */
>> +				 <K1_PADCONF(77, 4)>,	/* uart8_cts */
>> +				 <K1_PADCONF(78, 4)>;	/* uart8_rts */
>> +			power-source = <3300>;
>> +			bias-pull-up;
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>> +	uart9_0_cfg: uart9-0-cfg {
>> +		uart9-0-pins {
>> +			pinmux = <K1_PADCONF(12, 2)>,	/* uart9_txd */
>> +				 <K1_PADCONF(13, 2)>;	/* uart9_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart9_1_cfg: uart9-1-cfg {
>> +		uart9-1-pins {
>> +			pinmux = <K1_PADCONF(110, 3)>,	/* uart9_cts */
>> +				 <K1_PADCONF(115, 3)>,	/* uart9_rts */
>> +				 <K1_PADCONF(116, 3)>,	/* uart9_txd */
>> +				 <K1_PADCONF(117, 3)>;	/* uart9_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>> +
>> +	uart9_2_cfg: uart9-2-cfg {
>> +		uart9-2-pins {
>> +			pinmux = <K1_PADCONF(72, 2)>,	/* uart9_txd */
>> +				 <K1_PADCONF(73, 2)>;	/* uart9_rxd */
>> +			bias-pull-up;
>>  			drive-strength = <32>;
>>  		};
>>  	};
>> -- 
>> 2.43.0
>>
Kind regards,
Hendrik


