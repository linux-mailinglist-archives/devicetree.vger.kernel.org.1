Return-Path: <devicetree+bounces-271320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NNiD3fPqGlIxgAAu9opvQ
	(envelope-from <devicetree+bounces-271320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:33:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E798920976F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA7F9305FDBB
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 00:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CF820E6E2;
	Thu,  5 Mar 2026 00:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T0Mx2Vob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FB0C8E6
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 00:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772670813; cv=none; b=meGQANLZkFTjLWA8j3RLabsKJLwWlkj4OdDBwmj6UZeB5xcHyxx/GNYcvfOQEpsVDXsHyCT8XPFj1F7luQ/diI7o8aQWGar1B4y35SANvbdtxR0J28Q2S6WFvtkWdZIrYkUpgWMrtwNb/wWilZwJDlMFSv+FUQk6GCMOcF5xtyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772670813; c=relaxed/simple;
	bh=hb/cStWwgMoJtjIPOyJ8b2rzoiwM6AlB0L8NcvGTri0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bxsp0zFSt7bHqV3Z9WdN95861pgY5v38qpjZablrVpOK1+Vz8yjlioKspij6ELQG2kLLADJXLhE6VRTn2nF8ehio2SmhfnDQ3pF/8SPqyh79psiwKv0Xn/lxXEw/32fAtCbcpuWjtkUlREoFP4m33bbjwmapurqjQccOGiTQ8wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T0Mx2Vob; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7d596a5be31so6463587a34.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 16:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772670811; x=1773275611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dO6/PAcNzwOa7Dt8duIwo+5/9N6iahdFoKK7CawFXAQ=;
        b=T0Mx2Vob6byT31Az9zVHK1jy1n5BB9B5JYzve0iJCeAizL28vPWVHvXXrxN/izQtiz
         VxTwzkAHm+zVUHYL87jnylmnJHLH10agkiJ2A99Lkul7SAQ9TA4OqECnnjGLp+adF5Ch
         TavIbaskvs3sEIc8ECj62BU0wtOf7kLs8aZohTS4D3G8nAzIWe/Hv5SboxgfIXgpSOkD
         AeyQgg1JoPl1HENKi0YsvXcEdrHtO4PSXXK6Ryo4Gvbv3+pfauB88Fi00gx0c8M7hD7I
         qup2FoZLs5ZIibod8fkFpp4Nf3ny74+ctQ90PAe0zIvuHAFQemQ0CdGjKE2mM8qoCwfj
         dn4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772670811; x=1773275611;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dO6/PAcNzwOa7Dt8duIwo+5/9N6iahdFoKK7CawFXAQ=;
        b=mPCWVsOGYhslK5QY63Q+x9k+/I9kQ12AEprOCG8RccP8b0WFwno7Kkuq5Ao4qHiY2c
         Cg/sXD+1M+gkuj9t2ZLDRUQ6Qzdy7eEm6FVrGScP4lWrFBG1+PdU7xdp9KgtE185iEWL
         3j6SrOk00SkLAsB0HzgPWTlsNTp1pQmknNsSIVQj4RSeVGlUFJFHCHPzr7JzZtt4dQpM
         7MipyXPd61oJwg+dri77Db39SLoaozbOaf+gGhpqreoNl7DrCXEXaYVmfON/TowqiYLD
         RCqR+rhZ6qyyUcTFKYp4BNhMUrhQNe5bF/wOvSrrWXOiPC59HxRX2+FKKTYZYOc8O0Zv
         XUsA==
X-Forwarded-Encrypted: i=1; AJvYcCUTGYDkeFdlcjBPECCJfdq+Z4CCP9vyMn8xn3U9yA3BdIGtF9KZPAiYjGhn4uxaCXmh3O5vSdSxk8QB@vger.kernel.org
X-Gm-Message-State: AOJu0YwnkBuGJUddCqInTe/1S75gfZoKWQUVNQtmC6cZ9sSYbIeD8f0a
	B3a2DZhN4i3evauDPf6YTWwNJAmg9Iax/koIDVJX2Tl1W3WZgRUp/v5z
X-Gm-Gg: ATEYQzy5+xHtqMGI2mfmrBlXoXnRnPrknaFMXsjsZkiWof2i46KOpS+2olP2qTnTkUD
	1Sr6f5HQlLgVgj7nOjplU3FpW/cQ6MU9LYsgnSYEFo1vLpkDrXlnEeReZTq2FMGWsSUv043Udlh
	NuuvUMy8X2Ckf6dUzKTuOcQSTf6aj+vG5NsYmQSgdpyARCGx2eiRmmJ4EZWruNFELaAPVSvJ79Q
	w19UisWiOp+OLDEQDQQTPZOx+NLL8GkfE1IG3NKVKkNTELCYPtN1gXBDqU9rtS6nvM7JNZG4DLI
	h064P51+3kLWrt1LScmUEJtByw7a+JqFIyfSjYz9w77l41zPypr647KPfMbM8P/RKmOfrh1zGZ0
	himTdH1A91wlj4vLPyrOx8FIHTOJVpTbE0t2z+4dnRi0Imvb/in3wQCmcXnntzvI13P22dKs5D/
	TvKF08n19wB28waTAXAF6DX4yqzuuqsfEG5HV/gPftyNQaTSUygv95WZmc/DGhhDhjkqKToX85N
	xpda8VuroowGS0PAxo8V5RQy9zn1P/dpv+TWNDynA==
X-Received: by 2002:a05:6830:6185:b0:7c7:18e:913a with SMTP id 46e09a7af769-7d6d139f75dmr2154983a34.19.1772670810741;
        Wed, 04 Mar 2026 16:33:30 -0800 (PST)
Received: from framework.misc.iastate.edu ([2610:130:110:25d:2aa4:4aff:fed7:9b19])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d58644dd17sm16633834a34.5.2026.03.04.16.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 16:33:29 -0800 (PST)
From: Kerigan Creighton <kerigancreighton@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com,
	wcn36xx@lists.infradead.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	linux-remoteproc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kerigan Creighton <kerigancreighton@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 2/3] remoteproc: qcom_wcnss_iris: add support for WCN3610
Date: Wed,  4 Mar 2026 18:32:52 -0600
Message-ID: <20260305003253.1022386-3-kerigancreighton@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260305003253.1022386-1-kerigancreighton@gmail.com>
References: <20260305003253.1022386-1-kerigancreighton@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E798920976F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lists.infradead.org,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-271320-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kerigancreighton@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add a qcom,wcn3610 compatible string.
The WCN3610 shares the same register configuration as the
WCN3620, so its configuration is being reused.

Signed-off-by: Kerigan Creighton <kerigancreighton@gmail.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
 - Move remoteproc compatible string addition to the middle of 
   the patch set.
 - Add Reviewed-by Dmitry (thanks!)
---
 drivers/remoteproc/qcom_wcnss_iris.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/remoteproc/qcom_wcnss_iris.c b/drivers/remoteproc/qcom_wcnss_iris.c
index 2b89b4db6c..e58b59355f 100644
--- a/drivers/remoteproc/qcom_wcnss_iris.c
+++ b/drivers/remoteproc/qcom_wcnss_iris.c
@@ -95,6 +95,7 @@ void qcom_iris_disable(struct qcom_iris *iris)
 }
 
 static const struct of_device_id iris_of_match[] = {
+	{ .compatible = "qcom,wcn3610", .data = &wcn3620_data },
 	{ .compatible = "qcom,wcn3620", .data = &wcn3620_data },
 	{ .compatible = "qcom,wcn3660", .data = &wcn3660_data },
 	{ .compatible = "qcom,wcn3660b", .data = &wcn3680_data },
-- 
2.53.0


