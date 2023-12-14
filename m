Return-Path: <devicetree+bounces-25375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 065B881310F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 676A7B20CAC
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F80353E3F;
	Thu, 14 Dec 2023 13:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hnsA1eZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF65610E
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:15:15 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-58962bf3f89so638135a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702559715; x=1703164515; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NNtgCx5NnhkXj7j2xKYtXfwc0kMnKH5xbdP5A0tmvRg=;
        b=hnsA1eZcqHa6PFLlXrztc2JVJRCVymBlllYODtgJfIje5Oyxana2/PdzGwhIXFyL1z
         NdhHbv6Z4G4Tc6ExAJHrt/Ji3jhhOkzZztWdsuyh1A9HjRUY8pTsRYCyg2L6L+94HFFB
         SSrmJTIYy2+UVzQb7xO8zcU51w80l+cY/dASc5igmsHhIYIYQLLJNOtV8N9+tsfAHNR5
         lK2PPmOOcwuOBgFB7yptFum+ptQQds5SxkC+3RgE2sp/o8D1N5jRByuwprbfVcEiiqCC
         GYlVYs/h9Z/pLJn+iG3vls+XjgBJUW21LN1H2Bv8rPWPsA1X3LyvZv7hnWBcrBHe1o2e
         SuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702559715; x=1703164515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NNtgCx5NnhkXj7j2xKYtXfwc0kMnKH5xbdP5A0tmvRg=;
        b=aIWaNM4iqZGKvxdDYwDqdbIpFa73gXir+rOKWgs0T4+rkQO5AXb/DQ7bqiFx4OO5Uv
         s0xNtdtYDTVE2NlJo4ex/X/QJ6TmfwtlAm7a01EIEQNMhvolDC7/G0ip7ljlYCbtEk7E
         cjQG8mHI6UavylFwli5h2/YYYNHB4cohY8Kovxai29eUsej6ENLLyuzvayBF1yzWqdr7
         GqFWpX2dOHcGdzwFDa7wdCsIOcM+k6O1Gdx60YL/eSqq6IoYZ8HPUTIEee5u5dtp1H7q
         DmOFAE3/mvRYhqsw2J66VVSJnp+6t01f6Wj8aTOMLIcd67mEmquyNVBxgq6nyqHgVMoi
         eltQ==
X-Gm-Message-State: AOJu0YybleZMYGIFFxc1v/rG6toTHYxXOSQ9Rgt2dho0VW0mgHedrRPe
	CcZbX9zhctdXktiLIRcREuV59OHS0Yqi4KDeqS8+MtaK
X-Google-Smtp-Source: AGHT+IFMj+5d7A9ZxWLiLEpCZuoZ0tkhZYQXFLF8/TXg+qRZAwd9EhDruSOBxDhGBbLreXufw0uMnNTZtdxf1KvxT7U=
X-Received: by 2002:a17:90a:7e8b:b0:286:8fa5:7bc7 with SMTP id
 j11-20020a17090a7e8b00b002868fa57bc7mr16804666pjl.2.1702559715133; Thu, 14
 Dec 2023 05:15:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <20231214112442.2412079-2-xu.yang_2@nxp.com>
 <CAOMZO5DxcLoBYMXQi=EW=-fAqz12ghPm+7PHn=LdhicETKg2pQ@mail.gmail.com> <VI1PR04MB51523F1EF74EF23B92C6880D8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB51523F1EF74EF23B92C6880D8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 14 Dec 2023 10:15:03 -0300
Message-ID: <CAOMZO5DxQGjF5rUs6NMR7LCo11tLVPpnPs9nzH7qh2nCCBXoLQ@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
To: Xu Yang <xu.yang_2@nxp.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	dl-linux-imx <linux-imx@nxp.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 9:50=E2=80=AFAM Xu Yang <xu.yang_2@nxp.com> wrote:

> PTN5150 can work autonomously for most of the basic functions.
> I don=E2=80=99t see a need to enable driver for it now.

We are talking about devicetree here, not driver.

If the PTN5150 is present on the board, then just represent it in the
devicetree.

