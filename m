Return-Path: <devicetree+bounces-134714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B849FE5D1
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661B5162110
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8171A7AE3;
	Mon, 30 Dec 2024 12:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b="qA2yn4Ka"
X-Original-To: devicetree@vger.kernel.org
Received: from omr008.pc5.atmailcloud.com (omr008.pc5.atmailcloud.com [103.150.252.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25052AD3B;
	Mon, 30 Dec 2024 12:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.150.252.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735561801; cv=none; b=ixS8uFERjK3/ugKcVfWCo6KCOh7q/8mb/Riox2A/tZCVDEvfm1rkFl7cAVSeq5gM9OyTX0WbWLrjTbk/cBx+OnxED/Ptyqw218dIZH83229IwZPTxOyh8S5FKtrowGaUggLb8Aj/+DEx2U1BqPHWwCKOouMlgaqI5d2C85HubQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735561801; c=relaxed/simple;
	bh=/mED2z8jeQ0HyrQPaltISs/+vUoRXgyzQ2DpYRjteRQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MNMn3SHRrcNjsRFULb1GmdsFUqcAZ6F8VqDTwUc8jQcWrDZFjpIzPlPc/IJ2STdlWkl76mjOdHVMcx8MFd7qVZ9ssC/Et9RTevAxl0wQPQ9rdx9aJdTWU1/1UumEqFuGI5OWOQ5MEoXCSfmXo4aCAAiZxGsWI7fUY3KnMOtXFMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au; spf=pass smtp.mailfrom=iinet.net.au; dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b=qA2yn4Ka; arc=none smtp.client-ip=103.150.252.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iinet.net.au
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iinet.net.au; s=202309; h=MIME-Version:Message-Id:Date:Subject:To:From:
	content-type; bh=/yDHyEOF65iv+WBloERa+yQVzEhn1FRFrUf1tU99xFM=; b=qA2yn4KaEgsP
	Id3p0MTRPekTU52A41qbIbgJUdbzXrQAqBQIQwIjaRNwdFCjP5eI4iG48BvklgaQKqC3Zt9kJSaNs
	UK9ayvNLlXomCVm0ZtT38W/mpHDVnxYhk2CH9iP5Ry5NS1/ghaKBK+EuYT6G5HhTdtaCU5uMBWGco
	ui79UVobyniaBeg0lcwJ2c6DqnQM0dfwpni0uj4RNq3TivjqhdlyvzHG3D+aIAIXfOJFCXMhoLbrV
	7gMlFw6uDZQ+H4mm/ARPC6sOBKFrnCUQ7J3QujQjzmrfYWtj2RVY7w1RSB9p5Z6hyL5qeaKzsD4ng
	MnTPpPdEsQVwrbZqIqxNGw==;
Received: from cmr-kakadu03.internal.pc5.atmailcloud.com (cmr-kakadu03.internal.pc5.atmailcloud.com [192.168.1.5]) 
	by omr.internal.pc5.atmailcloud.com (Exim/cmr-kakadu03.i-08cc005e7aeb759a2) with ESMTPS
	(envelope-from <gordoste@iinet.net.au>)
	id 1tSEUQ-000000000jB-2t0B ;
	Mon, 30 Dec 2024 12:03:18 +0000
Received: from [220.233.184.101] (helo=localhost)
	 by CMR-KAKADU03.i-08cc005e7aeb759a2 with esmtpsa
	(envelope-from <gordoste@iinet.net.au>)
	id 1tSEUQ-000000008QV-1BuF;
	Mon, 30 Dec 2024 12:03:18 +0000
From: Stephen Gordon <gordoste@iinet.net.au>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Stephen Gordon <gordoste@iinet.net.au>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] of: dynamic: Avoid reversing sibling order
Date: Mon, 30 Dec 2024 23:03:14 +1100
Message-Id: <20241230120315.2490-1-gordoste@iinet.net.au>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Atmail-Id: gordoste@iinet.net.au
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=e8UAS7p/ c=1 sm=1 tr=0 ts=67728c06 a=HSUqTxjWRdnMbJspRni59w==:117 a=HSUqTxjWRdnMbJspRni59w==:17 a=RZcAm9yDv7YA:10 a=x7bEGLp0ZPQA:10 a=4jraHwQkAAAA:8 a=JyCHAW5VufVdRi9fBWIA:9
X-Cm-Envelope: MS4xfK52l2AhI9NBeLt00C/KebwJV7bsgtEsqP273pCBe75b5VwLIpyv6n/LNxO6N7FVwmJSW3vRqHoQm5PxUkdX+Om+HJNSiDtrZ2hLXm4qbCVqXPopDPfG WowtGvm+ZthGQIQwl54/kx1PDg8XBJzXVEYIk6Q3FfS0y/hpn85LppRKU7YWdFwTBuHfaGK6sPH9QA==
X-atmailcloud-route: unknown

Current implementation inserts nodes at the head of the list, resulting
in sibling order being reversed from the .dts file. Some drivers care
about the order and do not work properly. These changes add nodes at the
end of the list instead, preversing sibling order.

Signed-off-by: Stephen Gordon <gordoste@iinet.net.au>
---

I ran across this issue using the ASoC audio_graph_card2 driver. Prior
to the fix, I needed to reverse sibling order in the .dts to make things
work. After the fix, it all works as expected.

Also, I noticed that drivers/of/fdt.c line 325-330 fix the same problem
for flattened device trees.


 drivers/of/dynamic.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index 0aba760f7577..57bea2d4af30 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -222,8 +222,15 @@ static void __of_attach_node(struct device_node *np)
 	}
 
 	np->child = NULL;
-	np->sibling = np->parent->child;
-	np->parent->child = np;
+	np->sibling = NULL;
+	struct device_node *last_child = np->parent->child;
+	if (!last_child)
+		np->parent->child = np;
+	else {
+		while (last_child->sibling)
+			last_child = last_child->sibling;
+		last_child->sibling = np;
+	}
 	of_node_clear_flag(np, OF_DETACHED);
 	np->fwnode.flags |= FWNODE_FLAG_NOT_DEVICE;
 
-- 
2.39.5


