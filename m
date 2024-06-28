Return-Path: <devicetree+bounces-81154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDD591B752
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 285DA283498
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 06:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FF51369AA;
	Fri, 28 Jun 2024 06:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inbox.ru header.i=@inbox.ru header.b="VX9jrYYd";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=inbox.ru header.i=@inbox.ru header.b="SesQfzcE"
X-Original-To: devicetree@vger.kernel.org
Received: from fallback24.i.mail.ru (fallback24.i.mail.ru [79.137.243.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8517F13212E;
	Fri, 28 Jun 2024 06:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.137.243.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719557403; cv=none; b=Cx7RFB9R8hPbBXZQgSc8MbWDjQjFJXWUU1ncV+hvCEb3yQF6HB/j/7AbGP8TNhohyfCPwTumgrGb+uAH97gtW4KxzKiH6MKVmfWR64sntkcNlrIYnYmfCA7SHEP0E2obj6RvkTy3oOswFM6UCX9yif686RwO8JmY7hU2RrpbHv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719557403; c=relaxed/simple;
	bh=y3OfKL/mIWCD2CU0dUGjLIhEKka14zVDGf/boSGV1qQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nTr+B0WApZMmGB7sS0WwkKwZuh+e/xBZQguRaX0RpvegxlNMHcvqrstkAPcMsrN07+NK0dk+oCnzusbApqPvJz38ewcJQvBrYD8Q71706WtPL9q6LfS7e4+bytI6ZbGmDL4SVU9GBFBQSMilTQiJVWbYZx0JoDXIiSL+BHJVxko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inbox.ru; spf=pass smtp.mailfrom=inbox.ru; dkim=pass (2048-bit key) header.d=inbox.ru header.i=@inbox.ru header.b=VX9jrYYd; dkim=pass (2048-bit key) header.d=inbox.ru header.i=@inbox.ru header.b=SesQfzcE; arc=none smtp.client-ip=79.137.243.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inbox.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inbox.ru
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
	h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=ge1m5xNnSjp5O705qLECpZaJUXZrf8RDfmnJN/mnCGg=;
	t=1719557400;x=1719647400; 
	b=VX9jrYYdpQP3swybF2ltAk44rPbI7gksaTRlnMZZR+GsM3uuvWVM6WDVb33tTVvTxMwNztvFNtTFpDMaHz83A3Rpfizd5hNf4qzrBil9yt/MEY9WNEvM38k2oj481i9lLVxYxEjYQ3ZTNd5qJr5fA+dwXoeyOcZ4a37UAkM6g77lh7YPsn6vnWRxOoLHo++7hzl38RhKnSafztMoeQCO/uIrldpsDvG60wWqrCNEZgGng7/hCsRn6bznkfY+ZJNkYkbAmeaDCEB/AMWduUcY5c2LMkkH2Lve05zKC5aZAq0pN80d7Fu2g3LP83Pi5wg1/oXzY357MUJX3PVKvkRDzw==;
Received: from [10.12.4.29] (port=47096 helo=smtp51.i.mail.ru)
	by fallback24.i.mail.ru with esmtp (envelope-from <fido_max@inbox.ru>)
	id 1sN4we-008JsP-Tx; Fri, 28 Jun 2024 09:18:53 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru;
	s=mail4; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:
	To:From:From:Sender:Reply-To:To:Cc:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=ge1m5xNnSjp5O705qLECpZaJUXZrf8RDfmnJN/mnCGg=; t=1719555532; x=1719645532; 
	b=SesQfzcEUEFe1KcFlVH2aeR3/Wd6X8GFjFSoQxC58k6QgtRJhGmTHGsglKAxsTxWb+8xyLxzeVv
	rJ9AeXDzAxVLZjmxaiMIa20D8wHWdYTxDckjGZt3WkVvJNHVe5d+Bm79LR5saYyDF85M2j69LeifK
	mepfKwPJJL+tV+lv8FS8GIXbU+rLJPhDkuxJJV/Kp1vkNFRkWajfrt/ptp4qzlGQLhXLcphzovNxb
	2HQPzEK5iL815k/6w8S6ASXbjCShzVVI1wHAbF1tqZ42b0A3AwO/X8WS+P2PuZMv+JJ9xMoP3vz4i
	WR4+MvcojeX2zo3MUwW6Wtlk/e1D+H6TyBxQ==;
Received: by smtp51.i.mail.ru with esmtpa (envelope-from <fido_max@inbox.ru>)
	id 1sN4wO-0000000DKRj-3U8Q; Fri, 28 Jun 2024 09:18:37 +0300
From: Maxim Kochetkov <fido_max@inbox.ru>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	John Hsu <KCHSU0@nuvoton.com>
Cc: Maxim Kochetkov <fido_max@inbox.ru>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	alsa-devel@alsa-project.org
Subject: [PATCH v2 0/2] Add master clock handling for nau8824
Date: Fri, 28 Jun 2024 09:17:45 +0300
Message-ID: <20240628061750.11141-1-fido_max@inbox.ru>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailru-Src: smtp
X-7564579A: 78E4E2B564C1792B
X-77F55803: 4F1203BC0FB41BD9749DDC91F62168F9434C08151801B152E33043C08F8D7FF8182A05F538085040B75E958E13EECA91AC8EDD30083ED68E5B7803034921C6E57BD3776DDB6887748E62883BDF625A9B
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE757AEC41D7AA04458EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006379A6B93796C91DCB58638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D83C6E4B3470113C446682DC0906D38882DEF22AD61BD8707C20879F7C8C5043D14489FFFB0AA5F4BFA417C69337E82CC2CC7F00164DA146DAFE8445B8C89999728AA50765F79006377C70927E34808485389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC86089696B24BB1D19F6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA7E827F84554CEF5019E625A9149C048EE9ECD01F8117BC8BEE2021AF6380DFAD18AA50765F790063735872C767BF85DA227C277FBC8AE2E8BDCE939D40DBB93CA75ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C1DE0DAB: 0D63561A33F958A5ACF5F6CCAA16077E5002B1117B3ED69690200D2D90457A39B74D9144D44E4FCF823CB91A9FED034534781492E4B8EEADF1165EFABA1780A6C79554A2A72441328621D336A7BC284946AD531847A6065A17B107DEF921CE79BDAD6C7F3747799A
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF77DD89D51EBB7742D3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CFC936A6000BFCC5EC7E936901FCABE1E64C628756CA9BDA33FE87FE105843AC59FB7A4CF61EC7A84F44A12D68860EECB7B3683851FD3713BC896C0CB3C25AE39F07416E56C15988D2146D90F64BF3396102C26D483E81D6BEEB84411BD425175970A7FB4ED9620804ADE12199CE9660BE
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojOl9CAQoHe3lFbbuTUPvMtA==
X-Mailru-Sender: 689FA8AB762F7393C6D0B12EA33CAA9BB0D3F26E3BD54D41A12365E67D9B78B74F465673F7486D3C90DE4A6105A3658D481B2AED7BCCC0A49AE3A01A4DD0D55C6C99E19F044156F45FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B44E72EF7427BD9C0864826EF222902C20973E2E13D56EC51A049FFFDB7839CE9EFDED2BF4F082F1951A39C9102C0F54495B4BF95CC9E659609E5F7F5C3DADE618
X-7FA49CB5: 0D63561A33F958A5A7EC19C2A94EDA0445CCA3F679D463662381EB71AEE44723CACD7DF95DA8FC8BD5E8D9A59859A8B64071617579528AACCC7F00164DA146DAFE8445B8C89999728AA50765F7900637E12249F0E86D8F40389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC8540F9B2D9BA47D56F6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA775ECD9A6C639B01B78DA827A17800CE77DCDFB3399A2F72843847C11F186F3C59DAA53EE0834AAEE
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojOl9CAQoHe3nAWffgjItudA==
X-Mailru-MI: 8000000000000800
X-Mras: Ok

nau8824 has external MCLK pin. So add enable/disable external clock
management.

Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
---
Changes in v2:
- move the devm_clk_get() to the nau8824_read_device()

---
Maxim Kochetkov (2):
  ASoC: codecs: nau8824: Add master clock handling
  ASoC: dt-bindings: nau8824: Add master clock handling

 .../bindings/sound/nuvoton,nau8824.yaml       |  8 +++++++
 sound/soc/codecs/nau8824.c                    | 21 +++++++++++++++++--
 sound/soc/codecs/nau8824.h                    |  1 +
 3 files changed, 28 insertions(+), 2 deletions(-)

-- 
2.45.2


