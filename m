Return-Path: <devicetree+bounces-9193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2F27CC068
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:17:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04557281955
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46CC941740;
	Tue, 17 Oct 2023 10:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="Mmgp7HXO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916C94122A
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:17:15 +0000 (UTC)
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com [51.77.79.158])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EDE1121
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 03:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1697537828; x=1697797028;
	bh=ufSCWYVk0+H4CDuQnLPLONYp2PW1XKTS7lo4/zj2kMY=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=Mmgp7HXOu2jk1PQmMAbaP5xWLW95BC8nNGa7Dc8e4d6azHhDMAB4U27IzzT+lYgjE
	 ZMDTwGlUXx4nyTp8HB8tGdyltMjHKhpXr/HaAgbzJ3OPKAfbSntOJDEwTpdXzZU/0O
	 GSgYT1vzopX/xGbv2YDG70JqWEIHSwwAMO6vJ4wYSrh0Dfr3ySA4sXecSgli9DS7kK
	 Pr0MZbBUVU89iYJsx5CSj+fEj0JOilez5/+e3kPZQouAhzGCkUdRxp96a/El5Rx9NJ
	 Hj36TXK2FpDAC1Ywzw+ApcIyO5zVScq6rwZNa9hWwEzyR6BAIpPiCw2kmH96XmU1+J
	 HjgdU5she59Vg==
Date: Tue, 17 Oct 2023 10:16:37 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v2 0/2] ARM: dts: samsung: exynos4412-midas: fix key-ok and use Linux event codes
Message-ID: <20231017101402.62740-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Input event code 139 stands for KEY_MENU, instead of KEY_OK as node name
key-ok inplies. Fix it with correct event code 0x160.

Use event codes with linux-event-codes.h included for input keys on midas
in addition.

---
v2: Fix the event code before applying linux-event-codes.h


