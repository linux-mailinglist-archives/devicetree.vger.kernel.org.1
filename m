Return-Path: <devicetree+bounces-38844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5731D84A80F
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 22:51:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E98EB1F2A85C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 21:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC009135406;
	Mon,  5 Feb 2024 20:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="YLdp6BDN"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43b.ess.de.barracuda.com (egress-ip43b.ess.de.barracuda.com [18.185.115.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DFA135401
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 20:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707165305; cv=none; b=OyTdNn8nef+A5G+qhKF9nYkC+d0bBDvBlshp1Nzr3lv8thOLxiGIDV0oHqw+/+t/gJ7qqNPp1it3g3nkeKByefVYtu+K7hcpYdjz/RCAvOI9ToHL0SOr4h/WfO30fR9t3rI9orxFzBQbWNx4OIwga7an7p0iof0E+m2sLbGgjuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707165305; c=relaxed/simple;
	bh=7wGCzJFWb5hFlaCiZEoJ6HQDkjtS4pWyMbct2zWNLls=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hsvNpVER0NV4nYn/lOEiFBXWUCQz8GasxwWQ7e0qUC/PSAxjTRPL3WpbHhyG1rM0btzSOhQOkyRo3VWwUFqosXAfb4ELB1ITjQfz6YCKfe8EY+J/krXd/3eoLGT4UYn0D8cfjJtraIlY6KEaZPAshcVaXM2M7daRCh8A4ae6OxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=YLdp6BDN; arc=none smtp.client-ip=18.185.115.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197]) by mx-outbound16-171.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 05 Feb 2024 20:35:01 +0000
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-78407a01a83so17649185a.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 12:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1707165300; x=1707770100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SWbDoVD07rVKEBKYtIbbk8nLQfwFu4lWItnDKsOHDdE=;
        b=YLdp6BDNxQAlSwd5dpGtwwNy8J7ruE15RUkEqbK05DzPXbJfee6Y9FV/o+RUuKahvJ
         o7wdMF/8leIqpfw4pXo5dcmzeWm+Ivywr6/+N5vQODioSmyrvbsLi3TXb4Fm5bXqAt7T
         Vnihq8S50rVD7l8zpwrk2xrSm/ykd5t23u0ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707165300; x=1707770100;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SWbDoVD07rVKEBKYtIbbk8nLQfwFu4lWItnDKsOHDdE=;
        b=p71/CVi9Lb2bVTcPZ3mZ5SSkeE/3Vict2HPm2duRggEevS1N2DUgWvN434X9NjIN18
         EC/O45yJ6qzL5NmbuK1LyHV0qshFthTDZ1E78FUqlMIuBx7w/aBjQIzlhoKdYrDoP8hJ
         i/uVqGquDZNTOYecW/xJl9mV3IqjXOBadZe68N3KF0aI+z6sQJETl826IJznZKxdLHe/
         jShXqnHJJSwiYxFPOo7UL1/ols+A+YcOK/6zEfVIWfLfe/VGNI+gtrRi+tZWuWu+zC93
         N54x7LRusFAVafomSCl4+VLsKxEI+IhegiMNw7hNotEyhEq229bkxJAjWx4htXtfNiID
         XsdQ==
X-Gm-Message-State: AOJu0YxHWslQ76COXnQmtLE3jTgWOhtb730kFfXkDc4DEs/Ek+wAxNu6
	wu4jyHoh3Czn2CSw2Ts9Yn9jn7lBYiZ7s3/YpFi2V5sGETlHPhLin9JhIB/fqH22WFBvXEVdzLP
	RgN+/MeDmY5eP9r40kRGoEMBy10SMKR3WhF/c3m+yNTIYi3PBSSoviTdZhrcZeB/A4Dcrk52FQY
	4Z5rtuDGbQsXq/7ZGdAp05kHZnoZpfEg4=
X-Received: by 2002:a17:903:1c9:b0:1d9:b8bc:fd7 with SMTP id e9-20020a17090301c900b001d9b8bc0fd7mr512439plh.68.1707163692636;
        Mon, 05 Feb 2024 12:08:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEh4+ZhiFeDkX7Q/woSOxwV5s1uHQHdpvC65GpnLTOH8TThLkC8QDx1mJjn0/AF8IelkUdgRA==
X-Received: by 2002:a17:903:1c9:b0:1d9:b8bc:fd7 with SMTP id e9-20020a17090301c900b001d9b8bc0fd7mr512423plh.68.1707163692321;
        Mon, 05 Feb 2024 12:08:12 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXwR6oYP4P5WmdXmesTXXZ02ffhuiat/gT+98uiClGqhk46BD9T+TfBuufWMDRmk8bfijxoiYyATNNRRjKdUZCz/uCqSnuGhiB6XKXqI/vug3mSk7BMtEpCLCgYkK4r2pZjr8zsCyBdx1HPtfiC8hu0cZJeWnKu/8of/k6DRddaxmNQscpKYZ0TSzkplK30ZaKE3bQSlmzDrrYzvfdGJf3qiky1tcJRnHg3BNQwt3BvigTv3wpntj6s7k1bUuZ8ytClvVP5quTb6gfabQHHtp3myt96ZIaA/6ZFQ0nvmhCe51Wk1LpMp/RY5gartKlwdDS2ifC5vmTIc/cKokQ021+tsjE=
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id t21-20020a170902dcd500b001d739667fc3sm263900pll.207.2024.02.05.12.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 12:08:12 -0800 (PST)
From: sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	u-kumar1@ti.com,
	sabiya.d@mistralsolutions.com,
	Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH V2 0/2] Add CAN and OSPI support for AM69-SK platform
Date: Tue,  6 Feb 2024 01:37:41 +0530
Message-Id: <20240205200744.216572-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1707165300-304267-12424-36645-1
X-BESS-VER: 2019.1_20240201.2150
X-BESS-Apparent-Source-IP: 209.85.222.197
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyMzECMjKAYoapiQbJyRYpRq
	mmScamSZZGlsmpJslmiUnGloYWFsbmSrWxAENBwqNAAAAA
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254009 [from 
	cloudscan18-189.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_SA085b, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

Hi All,

This series adds support for the below interfaces on AM69-SK platform:
-  CAN support on both MCU and MAIN domains
-  OSPI NOR flash support

v2: Changelog:
1) Removed CAN interface aliasing.
2) Updated bootph property on the leaf nodes.

Link to v1: https://lore.kernel.org/lkml/20240118153524.4135901-1-sabiya.d@ti.com/

Dasnavis Sabiya (2):
  arm64: dts: ti: k3-am69-sk: Enable CAN interfaces for AM69 SK board
  arm64: dts: ti: k3-am69-sk: Add support for OSPI flash

 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 162 ++++++++++++++++++++++++++
 1 file changed, 162 insertions(+)

-- 
2.34.1


