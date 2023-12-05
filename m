Return-Path: <devicetree+bounces-21999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E503D8060F2
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 22:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 858C41F21604
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 21:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E25E6E2AD;
	Tue,  5 Dec 2023 21:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k8qoaeEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96688183
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 13:44:05 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-54cd8f5bb5cso2913442a12.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 13:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701812644; x=1702417444; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NtPODTHNMByw4rsHzSlvkWk3wVQbetWpeccUPj/d6as=;
        b=k8qoaeEQ2YYvllButvKLfa5qVKx2e0YJmvapjnc59bZ/t2N/HePjLG1Qtlvwkz5DlW
         KBR9gyRsGqNL8AEGtAKstW3SVKJPHOQ7/z6+vpiA6VO/uWJ6vjl5OxKh8dcb6muGE+KQ
         WA4YyQIT9KO+J0Q/7y5pXZhssX0B3R18H+zbliA8UPU19BoRDs8Pp+S/1raC6uFr3x9V
         J6XVx6n2wbdE0CgERk0543dU5bGlVu9PoL5GZrZpgTSTIjUPvdLxWGRZYKqd33z93ufO
         fZLhEzAUhyDMzheQah88DI54HV5Agk9JIYgdAcCt1oPGoOhzd5SsbDagR3mKcC3KmtqP
         yd2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701812644; x=1702417444;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NtPODTHNMByw4rsHzSlvkWk3wVQbetWpeccUPj/d6as=;
        b=DXDnzd0GpBBaN/iHqJqh9ktO1ocBYTe3d15m9RWiW/hivH+m0uIanfOKs+dfFv8O5+
         d5ZzZINyolZSGTP0ahYpwU2EY1Y2CPiEjUyPxjlHropJQDYm8061259nsSIdqGBs0/ar
         YHcLoTnbBrsoeJmfwQcOnU5CiM7EhpM7y/8fHU3wJYnaJVLFT82TfpC4vcho8D6YllZp
         uLWVttMsvbBF+XDA28TSaUU+5wXxXPs1+K3nE7P6XSN5XGvmOX01ATiN4uv+w7aekhFO
         2lN1OyLnHLnO29bFypdwMCjvLPW/o3412PgCC1z79ntOprgWpgbYhWol9aV3Fv5DcQRx
         F63A==
X-Gm-Message-State: AOJu0YxkFKR1xzf2cQrt9q9ZW8vKb2ARfG2D72/rAk5YHODnnZKBrU/u
	awCiAMnkvpeYiGufw9cd1tY=
X-Google-Smtp-Source: AGHT+IF1vMo5ATjjFj0hYEASG1eV3bg6VLC9crTxdALyAIVt0wYlW+9/bW/mvqNlF1Ks3sbIjz8R2g==
X-Received: by 2002:a17:906:5992:b0:a19:a19a:eac7 with SMTP id m18-20020a170906599200b00a19a19aeac7mr818787ejs.128.1701812643685;
        Tue, 05 Dec 2023 13:44:03 -0800 (PST)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm7267888ejd.219.2023.12.05.13.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 13:44:03 -0800 (PST)
Message-ID: <708e46fb-5aaf-4c47-a8f5-4cd5171a8d76@gmail.com>
Date: Tue, 5 Dec 2023 22:44:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
To: kernel test robot <lkp@intel.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231204200907.5687-3-zajec5@gmail.com>
 <202312060400.SeDMAMe7-lkp@intel.com>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <202312060400.SeDMAMe7-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5.12.2023 22:04, kernel test robot wrote:
> Hi Rafał,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on linus/master v6.7-rc4 next-20231205]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Rafa-Mi-ecki/dt-bindings-arm64-dts-mediatek-Add-Acelink-EW-7886CAX-access-point/20231205-041120
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> patch link:    https://lore.kernel.org/r/20231204200907.5687-3-zajec5%40gmail.com
> patch subject: [PATCH V2 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
> config: arm64-defconfig (https://download.01.org/0day-ci/archive/20231206/202312060400.SeDMAMe7-lkp@intel.com/config)
> compiler: aarch64-linux-gcc (GCC) 13.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231206/202312060400.SeDMAMe7-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202312060400.SeDMAMe7-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>>> Error: arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts:103.3-4 syntax error
>     FATAL ERROR: Unable to parse input tree

Ahh, required change stayed right there in my "git diff". I noticed it,
fixed, but forgot to amend. Sorry, I'll send V3 shortly.

