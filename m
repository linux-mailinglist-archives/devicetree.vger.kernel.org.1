Return-Path: <devicetree+bounces-9739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B745E7CE47D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E985F1C20BAC
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218AB3F4A6;
	Wed, 18 Oct 2023 17:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vYhMbNyu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52DF3E484
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:29:11 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86B841BDF
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:09 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c5210a1515so56718401fa.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650148; x=1698254948; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5z7yiUweEg23BwK7zcSyTWxXFB2LkcpzcFHHPWHt2IQ=;
        b=vYhMbNyulohFq9QOPd2x9cJOdUVEhe8ID+eudIovN4H2IYpqjm9Vt3pUzshFlb0JOz
         lWJaBjSDh08k5AYafNbasXLjTDAmXNaqpQ20RtVjyud3EzH9RymZADIotwEIIEZodBcN
         NocCFZY+emoOcgGOhmxa23Uz5Ws8dVJ3Q8tfBW71rnjPztQZ3fnYdzCa1RR4qYheE95l
         TeeJHZWcjNThIS669/b8Xsqw/+H6ZqcP4saubh8o6SKiBKvgtB8O8m405BUNak5ecNFf
         /G4L1kmT941P6Ci6AWvr/mBjG4JIC+FIdboXMdk9hOaU2rh8VHIL27xigEiDY8TRefrT
         aUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650148; x=1698254948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5z7yiUweEg23BwK7zcSyTWxXFB2LkcpzcFHHPWHt2IQ=;
        b=D9NTP/tpSeaPG5MbBN8JRkqmZVxujsWQ+dQPXleSuZcPZXmwQ+bV1UhBfCFu2j4DJr
         DSx1V2FA+gmRrNxJqLwCB/pxxhzwROg1avmsUFmE29a5f7fm3cfgvnWM+uP9DLDSCa2t
         DukMW0rJEpY1SFIcpLs4DujxXHo5o5qWR1jvEwnPjtsJbforBCiAxltKUc5wYE2C5kKT
         82w9R7odK1RCmrTuSLnRgDW4firRVW8uvinEHvyQK4AedtvLL2ok2SRryUkGOJA41PVO
         TmdbmNbkfAlNT4lHcdPV9zPR6hTP5rGixjTYNRVSgC2c3oG0BRdZS8848gewihW4zHdE
         Bfgw==
X-Gm-Message-State: AOJu0Yy14Ga9sxsam8uNEA3qmOXy9k4BI7CM1A8uCoIvnE5R9ee3S4oc
	TzE1OjTpVWNgiLYBlJ+E3xdYJQ4G3k3CvdMT0cqQQw==
X-Google-Smtp-Source: AGHT+IGo8MWu21Tet2EOfE5+wEjwJOt2gHO9Cv9qIsNHDtqKivVuDg+TfiVa/BHwF8TahWAz+g7w3WQIL7DGU1ZQdrY=
X-Received: by 2002:a2e:a7ca:0:b0:2b9:ee3e:2412 with SMTP id
 x10-20020a2ea7ca000000b002b9ee3e2412mr6279909ljp.22.1697650147521; Wed, 18
 Oct 2023 10:29:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-13-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-13-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:28:31 -0700
Message-ID: <CALs-HstrnSM981utJD8tUdjwTc+rLTP9Eiep8A8Pbx29Gz4Xdg@mail.gmail.com>
Subject: Re: [PATCH v2 12/19] riscv: hwprobe: export Zhintntl ISA extension
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 17, 2023 at 6:15=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Export Zihintntl extension[1] through hwprobe.
>
> Link: https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/v=
iew [1]
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

