Return-Path: <devicetree+bounces-135597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8019EA016EA
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 22:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58E3016230E
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BF11714B2;
	Sat,  4 Jan 2025 21:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b="B3JickMo"
X-Original-To: devicetree@vger.kernel.org
Received: from omr008.pc5.atmailcloud.com (omr008.pc5.atmailcloud.com [103.150.252.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D082A182D0;
	Sat,  4 Jan 2025 21:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.150.252.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024779; cv=none; b=Q1VODHc1oJpXUpL13HvQTIdOJw9XChbfdbzzdgF2qZSgRlQg+sNz7z3Y8TB4qAfe3Pejmn3Di/hUOGw337nEs9HrXjszu4PdETkjEUOjycgWiuMjkQ6CyUoIpqxxKKpRboSdcExkCbfodWH86E5p8K6adCnkOiGcY1zucYShQG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024779; c=relaxed/simple;
	bh=laizZVyNccKagA+DnK2A68BJElDTeVy88yfPLD0czlY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ukcx7MXwsh7CkJrmQGtQZ9eP5tLdO+KLWy4qImJ6031RqYJngiL+/ZbWMdr4vpX6Vw0zLLHhj1Ccy00q5v1H85qDwO0qupaJSBFceCTKM/ZvbvRvWXLSiyC8TEXM42imZ1cPd2XvSqTQFmfxAg2pFIHzCOPVCxoy9GemM2upoQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au; spf=pass smtp.mailfrom=iinet.net.au; dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b=B3JickMo; arc=none smtp.client-ip=103.150.252.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iinet.net.au
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iinet.net.au; s=202309; h=MIME-Version:Message-Id:Date:Subject:To:From:
	content-type; bh=7MyhceiEyGGIzgabOr13RFgKQXYTu0qMBAan4t6qQNU=; b=B3JickMoyfMq
	Fodno2CdvJcnQynhu9AsIpxC1GCown4hDAkz14csNtUih6YSIwRaTOU7ppg9Bwutput++ejrFXEyO
	LqFf7LVfqZkfeLJD1ED5V/smwCIoAHPM6uN1Qb/Zlt7i+MN9pahmDFXVai/eg3wFP5vv4TbxPIAl9
	DPag2YAwD6H0cIclbsaiu/1lAj7d5EsbLy6vruCB2jDKaZ+9ugcpfR1krkql6/eZwRVD/pW9JoKf0
	Pin3IYfNSguUJH3gwmGxKSz5Eb3KxU9Tvaf1P1BUWkCWOvV32rmq+5CBPItkjHtYiHqOXCuA9lJrW
	eG+96nQtD2N7POv2wOGdXA==;
Received: from cmr-kakadu03.internal.pc5.atmailcloud.com (cmr-kakadu03.internal.pc5.atmailcloud.com [192.168.1.5]) 
	by omr.internal.pc5.atmailcloud.com (Exim/cmr-kakadu03.i-03d0382f575012431) with ESMTPS
	(envelope-from <gordoste@iinet.net.au>)
	id 1tUBLU-000000006pQ-0HeZ ;
	Sat, 04 Jan 2025 21:06:08 +0000
Received: from [220.233.184.101] (helo=localhost)
	 by CMR-KAKADU03.i-03d0382f575012431 with esmtpsa
	(envelope-from <gordoste@iinet.net.au>)
	id 1tUBLT-000000000dY-2gfb;
	Sat, 04 Jan 2025 21:06:07 +0000
From: Stephen Gordon <gordoste@iinet.net.au>
To: robh@kernel.org,
	saravanak@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stephen Gordon <gordoste@iinet.net.au>
Subject: [PATCH 0/2] of_graph: Ensure graph nodes are returned in address order
Date: Sun,  5 Jan 2025 08:05:22 +1100
Message-Id: <20250104210524.2137-1-gordoste@iinet.net.au>
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
X-Cm-Analysis: v=2.4 cv=HuNwGVTS c=1 sm=1 tr=0 ts=6779a2bf a=HSUqTxjWRdnMbJspRni59w==:117 a=HSUqTxjWRdnMbJspRni59w==:17 a=VdSt8ZQiCzkA:10 a=x7bEGLp0ZPQA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=nc5kjLHxgBhfgeFwOIkA:9
X-Cm-Envelope: MS4xfJxa0SNRLkPCJbEDhSlL2ZMetiylk5yMyIOmQSRL4D7teg8znGeuppEhJAm8A60pwAbjP3eiq1UDd2C4I9LnhYG8CJfJzSnkT5L9SpPl9DISOw7NWHJg aTS0K+pHq8q79BISdctk05ZZCpCq53MbjozUHTcXXZojdZHftF6Y3sigYfXeBMoRbOhHvBBHNX7m0A==
X-atmailcloud-route: unknown

Hi Rob,

As discussed in [1], the order of nodes returned by
of_graph_get_next_child() can differ depending which code built the
device tree. While the DT spec does not guarantee a specific node order,
some drivers may assume that node order will be the same across platforms.

One example is a driver accessing port@0 using a phandle, and then
iterating through the children using of_get_next_port(). This does not
work as intended when the tree is built using drivers/of/dynamic.c.

To avoid breakage, we create a new function to return children in address
order which can be used when the order is important. We then use this to
guarantee that graph nodes are returned in address order.

Testing was conducted using a custom module loading a graph and running
the following on each ``ports`` node.

	num = 0;
        for_each_child_of_node(ports, child) {
                of_property_read_u32(child, "reg", &id);
                data1[num++] = '0' + id;
        }

        num = 0;
        for_each_child_of_node_by_id(ports, child) {
                of_property_read_u32(child, "reg", &id);
                data2[num++] = '0' + id;
        }

        dev_dbg(dev, "ports%d: %s/%s", ports_id, data1, data2);

Test results:

[   62.074178] testgraph testgraph: ports8: 0/0
[   62.074183] testgraph testgraph: ports7: 9/9
[   62.074186] testgraph testgraph: ports6: /
[   62.074193] testgraph testgraph: ports5: 012/012
[   62.074199] testgraph testgraph: ports4: 102/012
[   62.074205] testgraph testgraph: ports3: 021/012
[   62.074211] testgraph testgraph: ports2: 201/012
[   62.074217] testgraph testgraph: ports1: 120/012
[   62.074223] testgraph testgraph: ports0: 210/012

These are all as expected. I can supply test files on request if you
would like to see the test cases, and perhaps suggest more.

Regards,
Stephen

[1] https://lore.kernel.org/linux-devicetree/CAL_JsqJdMy8h96crA2r66dHgrnQ9Rbm=g9i=hp9tZ5DLnbVpnA@mail.gmail.com/

Stephen Gordon (2):
  of: Add of_get_next_child_by_id()
  of: Convert of_graph_get_next_xx to return nodes in address order

 drivers/of/base.c     | 41 ++++++++++++++++++++++++++++++++++++++++-
 drivers/of/property.c |  4 ++--
 include/linux/of.h    | 12 ++++++++++++
 3 files changed, 54 insertions(+), 3 deletions(-)

-- 
2.39.5


