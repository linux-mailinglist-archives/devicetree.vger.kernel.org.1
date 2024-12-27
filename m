Return-Path: <devicetree+bounces-134210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4002C9FCFBB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 04:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DC50163AC7
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 03:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131E43596E;
	Fri, 27 Dec 2024 03:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pk0jhaPU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE9935961;
	Fri, 27 Dec 2024 03:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735269032; cv=none; b=ZJNnY2bvjKgupBk/9cKAZRq1W9YTmd7GveUnN/1xkql88ZPZfYm9LdDYuuj2OO9jwJFB3umMDJmDlqq6M2FJrdmAFUWre96m5FgUmeESL/uoWaDC8gvXziDnpABuy70tguOI+kRu+7eFHRVj11CYpRB5vbKMWEU4dA1oozPp2u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735269032; c=relaxed/simple;
	bh=eEZPMqnFAFZL6U2Nau2tHWImP2Mq85i2tQEbvcKc10U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ci6106/tbAZj5OsBMqw2Xzbhah75kqhDMtSMoj0nEgmSczxQQKRzv/2Je8wzNLv3I0gMrIXnC4o7yc5cWYGH9Rlh5UnK6zDYxfhjHb+lwE+2qCeapEdfts1YmeZ1bmidEg9uVpN721oNEAQssyI9CEWSEVbIPgcTgsCCHuMon+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pk0jhaPU; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30227ccf803so83220821fa.2;
        Thu, 26 Dec 2024 19:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735269028; x=1735873828; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u9GzOqSFTFut+M0trF5n5rtYW7iZuRD8VsII4Yb9qIs=;
        b=Pk0jhaPUV3L8sknfygnIPRPIgv4PVd20Q0XR8td2hM1vhAY4S1/I57P6NAZ7KSBqEB
         1SmEW6uUZL+qG5q88BshkJXgjEDV18+m/469y0Cxety6rnhbvTD9mUc5q08PK6x/EiIq
         A0YQ4a8DwZ8/ed52GiT0D1/x0sUNFXR7Z56P2yOAGQbZK+/MA6Y/bgp92eYs/AktgxaA
         9HKWbsJSxkCxBHiaU+4I7jzVczfDpDewMLT0YongCGKLZ4i0LViGX9or8zG/TmRmF2rC
         fhfwc9v1ZqsNB1FBLyHHBQ92sL9xyySlZ6aPeEX/dCnKr2K+k28lPjqjrpc2t+n1k3Cg
         gX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735269028; x=1735873828;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u9GzOqSFTFut+M0trF5n5rtYW7iZuRD8VsII4Yb9qIs=;
        b=lcQlufgAPkDbojtoAZaz1/zRAYOaw3NpWsws+ZNwG15AgAZW0axT1P3UD8oLIGMhtc
         e6UV+I8w3/K1E1U2Ex/qdLEdwJBT/QMEsx+za5HivXWrhm07f8gMXIQwoFuGSA4SJPvS
         FVn5u9zPFlCfubQ+ltjtoVRuzJidrLCB7zF6bfiTVglNUEVBxuKsvelfgG5GQ7YQXnze
         ymlOI24T8bJPngXOuVsIJAURtH6OJc8DHmGoZKLV3DGuzgmwBnD91wBq28eenbYvzbHP
         nz3QycszBqql0Js066zisHX96/uwaglAguJIOLblSDSzCw4Vs2TvMN0LM0mUsT/qTipr
         1ISw==
X-Forwarded-Encrypted: i=1; AJvYcCW8Y7hTfGsXc2N4jQ2IXiGnIXoh7btmZynL3FyRaaoBfvO7LusVxTHNM1LwF5VbAeI+jhqjEJuTDGJxH7g=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3152X18XiWZyIPexOkmy7gM9AMHJjThjrG8U6GyCjYv67Taa9
	g/1i/smlNb29Gkdcgo1RFuECOvyvUqFXrBcRvM1mvF1Yv4z6hH4=
X-Gm-Gg: ASbGncsyQAJDx0yPr9RoSrFFxub/W/wMWXoWAWJUJKqzkYyHa50qINNZuF63dHihYaN
	RKweBt3CtFuftxINWPL7UvWV/n7vEG3CX1sSuW82TbKpolcdhnNcRw4PzO1gznZp8xBBOg7xv+c
	VH9RIRwn6IvsXIXycgemt9YbRNbKTv6Lz9Ez0V4xsGmim1ea3Oe0BzqGWxvbARV4XSWMAifyxsV
	RBhNQSvpb2J8TdwybsyiROjruPUW+1xe+0KLHBcJD6qjKi0fKO3D03zK7U=
X-Google-Smtp-Source: AGHT+IExyyy4jgRB3UWLgHTsEeFRs0/I8P7gVGIIOS5qg76b9sHxaxSVCTtLynrzkX+OeGPg7e1UAg==
X-Received: by 2002:a2e:a701:0:b0:302:3021:9b03 with SMTP id 38308e7fff4ca-30468567821mr64398891fa.17.1735269027581;
        Thu, 26 Dec 2024 19:10:27 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cccasm24326141fa.1.2024.12.26.19.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 19:10:27 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Fri, 27 Dec 2024 06:10:12 +0300
Message-Id: <20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJQabmcC/x3MQQqAIBBA0avIrBNyHCK7SrRIm2o2FSoRhHdPW
 r7F/y8kjsIJBvVC5FuSnEeFbRSEfT421rJUA7ZIBpG0ly1H5sxh18GjNr0j8pacMx3U6oq8yvM
 fx6mUD4afMxphAAAA
X-Change-ID: 20241224-bigtreetech-cb2-18944b349916
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=eEZPMqnFAFZL6U2Nau2tHWImP2Mq85i2tQEbvcKc10U=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnbhqid1wH5MSiCj96ZCeJnpipynuRqmr3gltID
 HJ6JOMyTM6JAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ24aogAKCRC8310ZUDOW
 /RA6EACokGH4AkfQnCDMNuE1ab9eqYd5OpqsM1kRnmTCckb+s/fhcf+zmlOvMz/6tY7keWDMOkI
 h01pY2Oo7uf4yAa9DkqM9gw5NgZsFcPnXRMtlbwjWOIk2ZW0xiXp6MgiMhFf/Y0FwoGHX2zb7B+
 pmoL0G6br4N1oL+wPkHHoiImXft9pJQeWp6p01Qq4tMwFMOBtrSLOXg6Ra98w1rmTdeLNrm6RYA
 lpkA9WCDaZqIEoCjaUFmVN9ddDcIocLcWq4bDh8a2EOGpHjwX6Ean/WYf2hVslhG1IEnE++juJU
 9zjkH5F+ZINJ9wXDB9DxjgYu63JcnQCD31blP0+yQObyPsPM5X5QCN3LCiNHekjxYZWV6r2hqdA
 Rx2MfOr/a93JqlhsNzyzx7SVzYe3CGQsiC3NqZYx4Ht72BffT04hMBVvGCorLFxcHQO4oZ6JpfR
 wKs9rIMPzau5AK0AcgSo65OGpvtrsORexLBB/+2ntOPj2A15G7ebSmscaBs2gTMNH5JnpaVUcO3
 koA82atd+/DBb5zrzxKntdLGS/WEJlXqfgKM3fNqpCNaRsh/X+EHyox4I4sWmBqucqekb/SZz6S
 0qsfZjyhWevc8lfDTWjqch9BHHURsohzC+4IDMlDjSoM9/zNgYOKdMw/IuQgHV8aZks39/LqcH7
 DRfMuHpKCFcBp1w==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
BigTreeTech for the intent of using as a 3d printer control board.
It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
the device trees for CB2 and Pi2 are also done in the same manner: the
common nodes and properties are put into a dtsi file that the
board-specific device trees include.

Changes in v3:
- Proper formatting and patch series sending (using b4)
- Converted spaces to tab indentation in the dtsi file
- Fixed empty line where the license identifier should be

Changes in v2:
- Added bigtreetech cb2 and pi2 boards to the list of platforms
- Split BigTreeTech CB2 and Pi2 into two device trees using common dtsi

Link to v2 1/2: https://lore.kernel.org/linux-rockchip/20241224135751.350379-2-ivan8215145640@gmail.com/
Link to v2 2/2: https://lore.kernel.org/linux-rockchip/20241224140057.350667-2-ivan8215145640@gmail.com/

Link to v1: https://lore.kernel.org/linux-rockchip/20241222203952.84217-2-ivan8215145640@gmail.com/

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
Ivan Sergeev (2):
      dt-bindings: arm: rockchip: Add BigTreeTech CB2 and Pi2
      arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2

 .../devicetree/bindings/arm/rockchip.yaml          |  11 +
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 .../dts/rockchip/rk3566-bigtreetech-cb2-manta.dts  |  10 +
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 941 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 5 files changed, 974 insertions(+)
---
base-commit: 4bbf9020becbfd8fc2c3da790855b7042fad455b
change-id: 20241224-bigtreetech-cb2-18944b349916

Best regards,
-- 
Ivan Sergeev <ivan8215145640@gmail.com>


