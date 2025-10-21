Return-Path: <devicetree+bounces-229291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B016BF5AAB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1B424846D5
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED29B329C63;
	Tue, 21 Oct 2025 09:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="BQK0aoUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41302F7477
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761040735; cv=none; b=CTEhlgQk4XtlsnzAPkY/0G+s4iv9DKS4hq2a4vMEVjp2HtCDWyKzGZ3c2S4UazFt7GPbFC3Xtktz3NHXQiPCXD2PcSQ2LvrnF0e932zhUU//0snGuy0VfTaflx6iZFknc/7b77xvhmf0q6puNYiw5Y+qGcy26DQXFqZSVh8KoTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761040735; c=relaxed/simple;
	bh=jL5PiRJcqKuNtEtR529Q+1ag7NmYrhDagjAzjFjAk+s=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=X93MwgX5aw0p19OxKjmaeRje/7wARKZD31JppQGeP6FjZTIapQysc7+5IEb0x7IjOjkrJZTw8DHCl9lxNm66OOS+niT7NBXO8Hr9Mm6Ihg8H9RmnP/Y4q7KnSAU8E8V/3A5IaMEYitYyLffsrG6ULVw4ldXMQ8vJtm9s6TjdDxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=BQK0aoUA; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-63c4b5a1b70so6613426a12.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761040732; x=1761645532; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jfc+hYYkM7bFtd7hc1ZsC7zgHKLWgJd0muBJbt3zQ7g=;
        b=BQK0aoUAjVkbvq5PTSRZ9xqpTPqVLUBwxecJNCh3KN7f1eu5J1Byux82uzMFo865j/
         QsBMlXB0KZy5I7iCpd8V+3W+wdEauefyKSgIEEjLc+LioiXSOiSvulDx8LY8rg76rcmk
         QoRxmupi8+1wds0KIUznq2Fq+vMwcztwvzzRur9J3GgbMZO7sZffBxUZrjeKyS+9IMCe
         zfxn+pMFE2Ny5n7qjKGxLQGvyWAIi/TjlAQPPFCEaLGWsonPvZZr6dGkU6TX0/znK+JB
         UUeyjlc5tz3Zdm8SmHyV5cnEN7jbG6OnIqc0KdExqCwsXpyDXDRFqeC0N/jpY/uRNq0d
         7jQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761040732; x=1761645532;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jfc+hYYkM7bFtd7hc1ZsC7zgHKLWgJd0muBJbt3zQ7g=;
        b=p121YtLUaFQCLJ00brJrfSh3gQbAQlRGi9FX1vyEWvGNb6G0jNVF5Lr1IPF93vKQhe
         cgcSwn5JCPqKpuYSpQgn6/y7qGtIPrllPUYaSpUI26bIa8ZJAslXHO5WUH7/sRsN+KFl
         YOQzVngu3NWtDI3japrK8wcZE/ZfHPTiVLa6W4Kk+39Cbw2qxuEGikR1piyMBM1yx7TT
         oknjQB20KQAA4ADTBM4Sh9/13OMeIQg3L+oO0jZvZ9LBrV9WSxavhzXrFLHZdc4HIEYn
         UuT+oc3vvcoTuiLkBxKH4CLJx1ihgIwobZENfxebh8BbSBFKwciBK0a/A/pzFVh4DH4u
         ME1g==
X-Forwarded-Encrypted: i=1; AJvYcCWiwtu9JoAso3ZTJkAAZP0Ivd53vmEkT5b5l4C0YLRNS4en01XGo7SMNXFVf8FGrFpf3eXvA5VYUrzb@vger.kernel.org
X-Gm-Message-State: AOJu0YwpU/S1fo2GPWskpBikOoNpTzxdT6tXKLj7ZvU4m9xtOV3IeYdr
	nt4JArke03lDpfpKtnnxva22yFMqznIsmeYyviQdUEjPKxewxm4crdbi7EQETi6DViTvMPF9/tl
	7y5O8OUo=
X-Gm-Gg: ASbGncvsxnfVuXMU7yoA4SowPGDR56oBxqaM+P9jbFgx4BNcu0er/CmPtbCSpLglB/4
	JhkikmpCvZtWvY+gp6CLJnkmq4niIl76RTjUcCFbVxvfM0603keB7+ZmIBlQ64ctIYU9KUsqlwE
	NxF/Qv22lOvoaA4MZqjoFwmtIekfWZ5uCq8zopEaCOSggsV/6e2z/NuRItywiW2MpZYShg8A05+
	zVk0IbH1dWkOyc2TfMpwcmzLSHjh0/Vm06742kcBpURM9KxF/HG8yLM5JvSXGvaQcIbVvC6AJJp
	m9a1gAuYhYKqlon3K9CVf2TyKGlntz1/QzSonZ+dFK1h9HhkAMlV1BwL0UjmcSq5/VRgRy6eA2t
	HcFiO7Opzx+DgzgBtaXdaqWGnrSp5ycyndRppFcziKBEm32ZPiPGBrFJRmTFH1K3dUdk2lOoD7A
	V849xJ1X7Jhqw4di7L2HQo1aVCSKkZ2wXTN5WJjHaUofZjlONpYiT69yxFQhBcHlcMbcg1j/KC4
	CsM9z1a2vKwpqEmJEll1g4nXg==
X-Google-Smtp-Source: AGHT+IGJHerhY1ys1hn8/V3TkFHhEbPbkgZHzY3kFbXZSLcPo/U1Nws0n7oq1SwARwLhYfdcHrxddQ==
X-Received: by 2002:a05:6402:13ca:b0:634:5297:e3bc with SMTP id 4fb4d7f45d1cf-63c1f629a40mr17634517a12.6.1761040732108;
        Tue, 21 Oct 2025 02:58:52 -0700 (PDT)
Received: from localhost (2001-1c00-3b8a-ea00-4b34-6694-d9bd-5210.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b8a:ea00:4b34:6694:d9bd:5210])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c4949bfd3sm8865958a12.41.2025.10.21.02.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 02:58:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 21 Oct 2025 11:58:51 +0200
Message-Id: <DDNWU7DVDGJJ.2K19P7FFZU272@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Jagadeesh
 Kona" <quic_jkona@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Vladimir Zapolskiy" <vladimir.zapolskiy@linaro.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Taniya Das" <taniya.das@oss.qualcomm.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
 <3210a484-b9c3-4399-bee1-9f5bbc90034c@linaro.org>
 <CAA8EJprP9Z181VDCT=xfyrBipzgiB0tfb8M_XZ4H=yOrvEnB0w@mail.gmail.com>
 <f41061a2-cf45-4588-8df7-22270c936ee2@quicinc.com>
 <D8EZ47Z557OX.37FDVYA5AHET0@fairphone.com>
 <d64c0776-0b12-42d3-aed3-4e6a13487f51@quicinc.com>
 <DDKNL43NWFMA.1S03T0SUYFVMY@fairphone.com>
 <3854e3a0-744c-4317-a6ed-e28edbabc4a3@linaro.org>
In-Reply-To: <3854e3a0-744c-4317-a6ed-e28edbabc4a3@linaro.org>

Hi Vladimir,

On Tue Oct 21, 2025 at 11:48 AM CEST, Vladimir Zapolskiy wrote:
> Hi Luca.
>
> On 10/17/25 17:05, Luca Weiss wrote:
>> Hi Taniya,
>>=20
>> On Thu Mar 13, 2025 at 12:57 PM CET, Taniya Das wrote:
>>>
>>>
>>> On 3/13/2025 1:22 PM, Luca Weiss wrote:
>>>> Hi Taniya,
>>>>
>>>> On Thu Mar 13, 2025 at 5:39 AM CET, Taniya Das wrote:
>>>>>
>>>>>
>>>>> On 3/4/2025 2:10 PM, Dmitry Baryshkov wrote:
>>>>>> On Tue, 4 Mar 2025 at 09:37, Vladimir Zapolskiy
>>>>>> <vladimir.zapolskiy@linaro.org> wrote:
>>>>>>>
>>>>>>> On 3/4/25 01:53, Dmitry Baryshkov wrote:
>>>>>>>> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote=
:
>>>>>>>>> SM8550 Camera Clock Controller shall enable both MXC and MMCX pow=
er
>>>>>>>>> domains.
>>>>>>>>
>>>>>>>> Are those really required to access the registers of the cammcc? O=
r is
>>>>>>>> one of those (MXC?) required to setup PLLs? Also, is this applicab=
le
>>>>>>>> only to sm8550 or to other similar clock controllers?
>>>>>>>
>>>>>>> Due to the described problem I experience a fatal CPU stall on SM85=
50-QRD,
>>>>>>> not on any SM8450 or SM8650 powered board for instance, however it =
does
>>>>>>> not exclude an option that the problem has to be fixed for other cl=
ock
>>>>>>> controllers, but it's Qualcomm to confirm any other touched platfor=
ms,
>>>>>>
>>>>>> Please work with Taniya to identify used power domains.
>>>>>>
>>>>>
>>>>> CAMCC requires both MMCX and MXC to be functional.
>>>>
>>>> Could you check whether any clock controllers on SM6350/SM7225 (Bitra)
>>>> need multiple power domains, or in general which clock controller uses
>>>> which power domain.
>>>>
>>>> That SoC has camcc, dispcc, gcc, gpucc, npucc and videocc.
>>>>
>>>> That'd be highly appreciated since I've been hitting weird issues ther=
e
>>>> that could be explained by some missing power domains.
>>>>
>>>
>>> Hi Luca,
>>>
>>> The targets you mentioned does not have any have multiple rail
>>> dependency, but could you share the weird issues with respect to clock
>>> controller I can take a look.
>>=20
>> Coming back to this, I've taken a shot at camera on SM6350 (Fairphone 4)
>> again, but again hitting some clock issues.
>>=20
>> For reference, I am testing with following change:
>> https://lore.kernel.org/linux-arm-msm/20250911011218.861322-3-vladimir.z=
apolskiy@linaro.org/
>>=20
>> Trying to enable CAMCC_MCLK1_CLK - wired up to the IMX576 camera sensor
>> on this phone - results in following error.
>>=20
>> [    3.140232] ------------[ cut here ]------------
>> [    3.141264] camcc_mclk1_clk status stuck at 'off'
>> [    3.141276] WARNING: CPU: 6 PID: 12 at drivers/clk/qcom/clk-branch.c:=
87 clk_branch_toggle+0x170/0x190
>>=20
>> Checking the driver against downstream driver, it looks like the RCGs
>> should be using clk_rcg2_shared_ops because of enable_safe_config in
>> downstream, but changing that doesn't really improve the situation, but
>> it does change the error message to this:
>>=20
>> [    2.933254] ------------[ cut here ]------------
>> [    2.933961] camcc_mclk1_clk_src: rcg didn't update its configuration.
>> [    2.933970] WARNING: CPU: 7 PID: 12 at drivers/clk/qcom/clk-rcg2.c:13=
6 update_config+0xd4/0xe4
>>=20
>> I've also noticed that some camcc drivers take in GCC_CAMERA_AHB_CLK as
>> iface clk, could something like this be missing on sm6350?
>>=20
>> I'd appreciate any help or tips for resolving this.
>>=20
>
> Recently one particular problem related to MCLK was identified by me on
> QRB5165/RB5, and it was reported to Bjorn over IRC, namely it's not possi=
ble
> to toggle MCLK clock enable/disable state, when TITAN GDSC power domain i=
s
> set off. I'm working on fixing the issue (a change under clk/qcom), since
> it's of an importance for a customer as well.
>
> I can't be totally sure that it's right the same problem as the one repor=
ted
> by you above, but it looks very similar, as a fast workaround please cons=
ider
> to set an ALWAYS_ON flag of TITAN GDSC, and at least a report from you th=
at
> this actually helps would be nice to get.

Unfortunately that doesn't seem to help on sm6350.

diff --git a/drivers/clk/qcom/camcc-sm6350.c b/drivers/clk/qcom/camcc-sm635=
0.c
index 12a469ce7e2f..cf87ad55d318 100644
--- a/drivers/clk/qcom/camcc-sm6350.c
+++ b/drivers/clk/qcom/camcc-sm6350.c
@@ -1767,6 +1767,7 @@ static struct gdsc titan_top_gdsc =3D {
 		.name =3D "titan_top_gdsc",
 	},
 	.pwrsts =3D PWRSTS_OFF_ON,
+	.flags =3D ALWAYS_ON,
 };
=20
 static struct clk_hw *camcc_sm6350_hws[] =3D {


$ cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
[...]
titan_top_gdsc                  on                              0
                                                bps_gdsc, ipe_0_gdsc, ife_0=
_gdsc, ife_1_gdsc, ife_2_gdsc
    ac4a000.cci                     suspended                   0          =
 SW
    ac4b000.cci                     suspended                   0          =
 SW
    genpd:3:acb3000.camss           suspended                   0          =
 SW
[...]

but still the same clock stuck warning...

[    3.093431] ------------[ cut here ]------------
[    3.094614] camcc_mclk1_clk status stuck at 'off'
[    3.094629] WARNING: CPU: 6 PID: 65 at drivers/clk/qcom/clk-branch.c:87 =
clk_branch_toggle+0x170/0x190

Thanks for the suggestion though.

Regards
Luca

