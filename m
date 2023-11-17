Return-Path: <devicetree+bounces-16787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 614ED7EFC1D
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 00:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B2802813A6
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 23:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9889D4653E;
	Fri, 17 Nov 2023 23:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gB/OU+Cx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13F3CD75
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 15:29:37 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2800db61af7so643988a91.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 15:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700263776; x=1700868576; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LbHzSCuBFy0duQmD82WgxlZTxbHZ8/U+nNp6RPJ54dA=;
        b=gB/OU+Cxd+N8whaNsryExHJL8fNMGXyHNvJnWV5mwYU0r3K/1YcudmgSCvmcU8/Rhh
         tRTBFF7UsboalPxdUp0X/SdOeAxF+A2DxHy0UEitRsC7qm8nTSkoFSKXx67vzeS6hrr6
         Xk5151dq7gigFIgdvuHpWlFSVs0sM/CJ3wdrxdIV1qqpHAS/A4gJHzCcHalUXQAXb3k4
         F1GrM1AwRZg8odYFbHLtpMIoJqyBwdmIOUaN22iCOi/2HkIOSO6EbQsrNCcdtgfyqTDt
         WDADYW4nG/EMzddV+c7dn3nI0M/JB3XMBIc/7gC++/tHdZSqjRFV0of/Ylvpy2Yy7PwM
         LFCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700263776; x=1700868576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbHzSCuBFy0duQmD82WgxlZTxbHZ8/U+nNp6RPJ54dA=;
        b=ei3xuwJlyRaEtzLGRocd/2ioAo/2iKMoCThIOXs+7w9MihIZpOFthbsyq4D1Kd8M+P
         fiO87k5pSdNGI7I18kYu8tJ6+mFxhDcVIBm0zvXS2xRuTUCFn9XFgqJpO+N2T5SJFQKv
         lg8HJiV2YK2NUgX8Amzp20d4Pu0JXGMOu1i6m+GB3sPmtymixW8WEdrNeNW/UWzfUxqu
         jcVO6j5hXY1Hjxu27TG/97BQ79ymLOov8HO24T1lyxk4bwvzRv5U64wuVV5ebKlXi5Jj
         bvRK3D++2kVVS2Tjhuhqb/2hxkfNS6houjCJIk+6TrsSxJ7rgLZo2iRTn/eQCGmr7/IG
         IuSg==
X-Gm-Message-State: AOJu0YxNdWJknQ3E3/BmtBiqCzcGBS8J28QS7MWJzCOxucjaz4cpiipi
	cjzyWaU8lkLSNiJiijXcEQw77axe5v4dqGMmsoM=
X-Google-Smtp-Source: AGHT+IEjGEYOlNF0tvuwXi4zYHmdXzOM92LSlu90kNMlL/txomOTcw15ys02TmbbngbSHxccHB7m+Ce8faWWOYQ1oDM=
X-Received: by 2002:a17:90a:ce8a:b0:283:987b:9104 with SMTP id
 g10-20020a17090ace8a00b00283987b9104mr1028018pju.4.1700263776411; Fri, 17 Nov
 2023 15:29:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117232352.101713-1-lech.perczak@gmail.com>
In-Reply-To: <20231117232352.101713-1-lech.perczak@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 17 Nov 2023 20:29:24 -0300
Message-ID: <CAOMZO5BH6v5YbMHF-oqdfehqXjEtk2sSBcqvJpXKEhEAKV4MTw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: nxp: imx7d-pico: add cpu-supply nodes
To: Lech Perczak <lech.perczak@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lech,

On Fri, Nov 17, 2023 at 8:24=E2=80=AFPM Lech Perczak <lech.perczak@gmail.co=
m> wrote:
>
> The PICO-IMX7D SoM has the usual power supply configuration using
> output sw1a of PF3000 PMIC, which was defined in downstream derivative
> of linux-imx (see link) in the sources for "Android Things" devkit.
> It is required to support CPU frequency scaling.
>
> Map the respective "cpu-supply" nodes of each core to sw1a of the PMIC.
>
> Enabling them causes cpufreq-dt, and imx-thermal drivers to probe
> successfully, and CPU frequency scaling to function.

Yes, it makes sense, thanks:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

