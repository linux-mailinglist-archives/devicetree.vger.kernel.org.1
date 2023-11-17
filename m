Return-Path: <devicetree+bounces-16462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D07D27EEBF9
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 06:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C46A28102E
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 05:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35BB01383;
	Fri, 17 Nov 2023 05:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JAY5QYGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1BB0A6;
	Thu, 16 Nov 2023 21:30:46 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c742186a3bso20509861fa.1;
        Thu, 16 Nov 2023 21:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700199045; x=1700803845; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6+5OfOb2sZO7MAbLVWKJTky5HfBI5gwmrmh4yrNi8bE=;
        b=JAY5QYGvB8oH5aK9ZzPfwtrJu9dyjUWq5q7r+KmeWMNXkvswsl7ReFZB68RNurztf6
         SBNVV8wlyNb8+YWVxpcMk8lGJrjKuI9+qzGcELEr7esL2OEaDnE9uUPteweYoac2VV03
         1j6cBzSvz/icRZxOVKkQTPC7ID6zcravFNwGi8u5ISX0GiHDID1aLkPsy4K+fAUSNoV5
         X0+/UXib4CL1o07cXpmMhg/df7oAMGWxizF+FTEgtRnWekZkUe1bqrNdbBUCo4foBCQl
         FPYEgZfjPbG0nsFjFfTZvBQ8eXxjSU1RMfs+jj0KiCbRez7+HJRQhVytysdjeskN9+c2
         RseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700199045; x=1700803845;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+5OfOb2sZO7MAbLVWKJTky5HfBI5gwmrmh4yrNi8bE=;
        b=UFGLJFCVrd2VHgKp28Cwnx1pA1ZwNEQ12e6dJtWwSEsGdQwjyn4z6GyWNIUqM51lvu
         QxSkvn4IwtZHCIs1djEe49OqACL7f/t4KXz86FP4nc0vqpHeAZ8o6MZFdjtTesrHNH8W
         N7ZZLPCrgd5kxSOPNMdT2Nz4wfZ8WouqFZ0uZ7QsPHHiJfmVNqdMpAAsmuCWbI2d+PhK
         T0KoFOSlJIGALrLTTU+Rsp3mdgHRAZVrGAHnGNUUzs5g8HjNOZo17cG0wZPybAu18ZL6
         yL9kyvjzA6pJHhBRnv7sJJvY8mnhxJdtUTcZgneytqRFUbf3ee8h7k8OIkq8WRyvv1U/
         GkmA==
X-Gm-Message-State: AOJu0Yzbd+ozi6qQKvccw0F84/T3pwcecsIAfT7FA/rhmCrdngqSxQoN
	iWiBx+Pw8K2RPR7WBhOsbkWT2pAf5dI6WNzhkfmnbKCVc9w=
X-Google-Smtp-Source: AGHT+IFkqKplUEU97iUGS1k/jBNokuHKyp3swU6pHYOmFPf12NGCOQ/6JotOz8HTpkiR8bJHkmUX9TlxFfLQslWUNNs=
X-Received: by 2002:a2e:3208:0:b0:2c6:f6eb:b396 with SMTP id
 y8-20020a2e3208000000b002c6f6ebb396mr8092700ljy.40.1700199044527; Thu, 16 Nov
 2023 21:30:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 17 Nov 2023 06:30:32 +0100
Message-ID: <CACna6rwZ8q1Zoz4UAryipsZ90yVD86BrcTNv1yKyS8F4DXsuSQ@mail.gmail.com>
Subject: mt76 DT binding: undocumented interrupts
To: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Peter Chiu <chui-hao.chiu@mediatek.com>, 
	Sam Shih <sam.shih@mediatek.com>, Ryder Lee <ryder.lee@mediatek.com>, 
	Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi <lorenzo@kernel.org>, 
	Shayne Chen <shayne.chen@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
	linux-mediatek <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I noticed that Wi-Fi on mt7986 has 4 interrupts instead of 1. See:
arch/arm64/boot/dts/mediatek/mt7986a.dtsi
300218b0503d ("arm64: dts: mt7986: add built-in Wi-Fi device nodes")

Those interrupts seem unused by Linux's mt76 driver and are
undocumented in mediatek,mt76.yaml.

Can someone explain what those interrupts are, or just send DT binding
update patch, please? I'd like to get DTS matching DT binding and
passing dtbs_check validation.

--=20
Rafa=C5=82

