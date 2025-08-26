Return-Path: <devicetree+bounces-209193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2220B35216
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 05:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92BD71A8343C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 03:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E452D191E;
	Tue, 26 Aug 2025 03:11:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6222D1308
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 03:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756177866; cv=none; b=UzKQrM9umVM34go8TT8//88yhWlJ/1AujjcxfRg1LM1Dm/ccT+sDtSGp1tL7fBL4xmSADVlzarwBrxjoENVgOcm9h9a0Y6+EAZ6CH6q6An7vdwILG0N+uqdhQd8/BuXMm3Neo/FTc824NxMDoGOBNK7Zea03Mzvmd7gB9HlwiaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756177866; c=relaxed/simple;
	bh=dKbllMyJvq2cWyxNikxqDTkakDd4FTY5P/jf+amsR9U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gpNtp1Iu3pilD5qKMuuRYC05RozrP3ZZlXN7iXrcQENVzmRXmj3qJxL2jLX5thx49PdQfuX9ytHUCF3oY2/5FyYTChuIszW+3CmKt3kCSj5SZpRh21ygxTeQehxI8yCkN5oUS22huY4KirMqMPdQm+2Hf/Ue0bEAkf2lReSCqe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn; spf=none smtp.mailfrom=chainsx.cn; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=chainsx.cn
X-QQ-mid: zesmtpip4t1756177709t5030dc98
X-QQ-Originating-IP: 8jn44H85scY8QjZCU9Psl5dy1VpOz/vAu3R++oqMy44=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 26 Aug 2025 11:08:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 599651795414604186
EX-QQ-RecipientCnt: 12
From: Hsun Lai <i@chainsx.cn>
To: Fred Bloggs <f.blogs@napier.co.nz>
Cc: Hsun Lai <i@chainsx.cn>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
Date: Tue, 26 Aug 2025 11:08:16 +0800
Message-Id: <20250826030818.3485927-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250826030818.3485927-1-i@chainsx.cn>
References: <20250826030818.3485927-1-i@chainsx.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: OX/+6nY/vs4TvfZnY960lqQH6DJb52Gwf3nkyzpeID3zoO2QVWVK3Q5I
	yMWe3pZ+GaObTgzZkQ8J+ZUwZ8qkaErkSKI/qM1dPnhkqwl17dkLEbygqq6wMHZLp18+eEL
	9CiJI8UxhSyqrYKJjgGt+bcxJE1QQ4aGNM9XxV++WZFcSjV6THMi2Tou+1n8jyBqQNHBUQW
	ryeRTtTd+0AIVBjic2+PZRFBDJJc3LRSsdx9IOLbXu2/7u9s3k+/G7v3Eba1md8zyFfADXK
	JpTfz6icvgHGdICfsu9g246WH3Wv9tNTuFZ4h7UG8Xco1d30O3gxzoQEYXHGePvdvCXLO8B
	hd9GHmEwjQrGYTtaGhUFbob3r5tP70xxCRsOX6em0vPNW1K7VLCj1ZH+AUyFSSJY8mvB8/2
	ddYsC9yejngrTjEQZ/fedwX3kPC/B3eKla8i6AFyBHTzco4iXswV3SaMzPc5nbHDU/x6DUV
	/zBS5YmeTZqj8XnwrZcN1UvRkwb04V6u/fFAx7Gx2thYbUzHyhWUZ7gF1w3hZGYFDAxTWB+
	+oe7xSEPn0VmLVGegZ7dYGw/j+NNqzVNwmy6/QKWl9UrgFlVKBvvl7+mZ+aSDxU+QBLhCIR
	Km1ttSq/VoPC4dPS4/Bc2ubskMC/8p4FmLmlldLrc9WKD8OyPt7XlCGLyAllO9lRfUkmCoS
	V+3MtzKylKi76TG4njrIsJy1TmtwE2kczGIj44d02j3I6rJuDVO4IUKHJ4mSCdhJBomYhQo
	sfhV2A9GGcGJX/BT38KOyHhzc4UfYBh1lb6vTmQMPV6Q2gLWDKav5IAX1EyghMGaj+KReM8
	qvLXWFBDq3tiiM0fiGsX4C4ZwAYeXbt9EVfmXe5trKezvxnvi09u7dXoTOVPGuBs94qtSkA
	UssQ0yMIZQ363BqQ+gFCpkbl9U84DawODZerVapnCfl509oz4bXO/KgHCCY9eBYe0hMyfNF
	9VQq+5KK+rLw8T3pJ/14/JpAZ6Y5UEIavvtzqiS9LpsVV19bOEcuC8DnXXzli5Br6Ycy6cP
	RqfFxKqyAsGtKFt9kr
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

This documents 100ASK DShanPi A1 which is a SBC based on RK3576 SoC.

Link: https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Signed-off-by: Hsun Lai <i@chainsx.cn>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6a..033730861 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -15,6 +15,11 @@ properties:
   compatible:
     oneOf:
 
+      - description: 100ASK DshanPi A1 board
+        items:
+          - const: 100ask,dshanpi-a1
+          - const: rockchip,rk3576
+
       - description: 96boards RK3399 Ficus (ROCK960 Enterprise Edition)
         items:
           - const: vamrs,ficus
-- 
2.34.1


