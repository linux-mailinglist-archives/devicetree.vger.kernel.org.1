Return-Path: <devicetree+bounces-28521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9563981E925
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 20:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51C752821BF
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 19:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CB75643;
	Tue, 26 Dec 2023 19:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=spamexpertfilter.sgcloudhosting.com header.i=@spamexpertfilter.sgcloudhosting.com header.b="FFmtqBlk";
	dkim=pass (1024-bit key) header.d=sparkleasing.sg header.i=@sparkleasing.sg header.b="NDvU1ge/"
X-Original-To: devicetree@vger.kernel.org
Received: from spfilter-2.sesg01.sgcloudhosting.com (spfilter2-out1.sesg01.sgcloudhosting.com [103.7.8.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114E815B3
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 19:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sparkleasing.sg
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sparkleasing.sg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spamexpertfilter.sgcloudhosting.com; s=default; h=Content-Type:MIME-Version
	:Message-ID:Reply-To:From:Date:Subject:To:sender:cc:bcc:in-reply-to:
	references:content-transfer-encoding;
	bh=8gXr5NqzxbPewhje1L2kQrKiMpiFwRfXBTL0MMWPipI=; b=FFmtqBlk2FWfFEOfyf7ZJomMxm
	W1e9L3VDt5clj+Z1kn2oMHlxE+N7xGuG3+AjNHUxTcfn+Mh2qdOFpbFT0pGiUqnpalnnhSftxGapH
	jiFWfuRer+is6sXzCiu/Mq3vCCozYP7RpSrPT243Z76OZ3U0wmm+Zguk9nV8H94pgpvE=;
Received: from w121.sgcloudhosting.com ([103.7.9.21])
	by spfilter-2.sesg01.sgcloudhosting.com with esmtps (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <admin@sparkleasing.sg>)
	id 1rIBTm-00GRw2-1P
	for devicetree@vger.kernel.org; Wed, 27 Dec 2023 01:44:39 +0800
Received: by w121.sgcloudhosting.com (Postfix, from userid 10065)
	id 6409CC05BC; Wed, 27 Dec 2023 01:44:33 +0800 (+08)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sparkleasing.sg;
	s=default; t=1703612673;
	bh=8gXr5NqzxbPewhje1L2kQrKiMpiFwRfXBTL0MMWPipI=; h=To:Subject:From;
	b=NDvU1ge/lYFfpqrv8IslxXGREwGXrBbNG16PsFUk34nDqFPlqwJZ/Sc64RtNHPAR+
	 lDiuxmXWIT09bn1xuxlrN7VyDN66wwGuMpqmz82dmhaE91YBEuRySJYoYyAwUKEakp
	 oZVHhu7c3OS5SBq7qUHvzuhOZXQcgWrk/CT2xrTE=
To: devicetree@vger.kernel.org
Subject: "[your-subject]"
Date: Tue, 26 Dec 2023 17:44:32 +0000
From: Fefepigese <admin@sparkleasing.sg>
Reply-To: devicetree@vger.kernel.org
Message-ID: <XKkSTyTXHEljwVflMnUpFoGfgvs6MfiFLjACGc1YCZE@www.sparkleasing.sg>
X-Mailer: PHPMailer 6.8.1 (https://github.com/PHPMailer/PHPMailer)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-PPP-Message-ID: 
 <170361267327.3187296.2567020641050596989@w121.sgcloudhosting.com>
X-PPP-Vhost: sparkleasing.sg
X-SpamExperts-Domain: spamexpertfilter.sgcloudhosting.com
X-SpamExperts-Username: 103.7.9.21
Authentication-Results: sesg01.sgcloudhosting.com; auth=pass smtp.auth=103.7.9.21@spamexpertfilter.sgcloudhosting.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.63)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT/nJdESo6+qMY/lv83E/snSPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5yOHTdQik0kM+e6Ms1j+Yjst8C9mOBdONdnsxgsk1D2pw/C
 h5SE4jAyhe1COeASyU+eu8y9ubbrckFUsLyaQlIa4ld5rdi2ZxohSIq+dqifZuwfXg3lLHvg5NA5
 Q4UKfXmeJk/a5liDdJW8eIwlbu68KuW1h8eeqP7N37PemI9sm7QF+/zonu8vXv3pvtYUKrSV9EYZ
 aKzSsPuGJLrUHJPa86W+hYbZBDwIjQqtZ+ZtQRTHswbbB/ha+ZWrSAi8SkwqWAikMcSxTAWn8RCv
 ieGEzRrIdLp/AwmQcey+hPKVq9dnf3S1NcNv3U2dp/UbPvsyyExOZDDL8Ul62aRfdWkD6ETAwi38
 C4ztsK9pNPIvu5T/j7zP3ezYIio5VysIwh0sZIsLqaY1UeS+5B0bzsw6rMNJRrRpQSU11Ur/Gkm4
 alUJJ6mTHcquWWkg3JKcV3VLcQlwWATQMyMMBCRPsthmY3+WAnhnTM+n6jvLVSmRsKE/uv+p4Jwt
 80+TCbaU2ey+vcsFHytRhcniOHral8doqqySfNDVZURJKVuAnp73bwEiRQv+PVjjwa+Z5RFCOMQV
 79k6MSQ9dbZaN7KghT4H7dH51/jwHwvTgsE1KTcKlXbNbBOGDpAFEPsIcSh7SQaCBX+e2lhQP6Pb
 f4N2YJgxBOolBJzjdLA2SJ/PkIyBK+p+xzXVuOspHDk+VBHnCGLCg54N6OWS1yeaNVvS2D0nY3+W
 AnhnTM+n6jvLVSmRsFSgUi8Pewhw/V+Ek8zoH/x82y0GA3oWl77TZT7VX7Q2nK5S9pXhvBeICY/f
 mcJtu4I1e/ogNoIHUD5kPdsgm1KkZeMm/rd1I+Gtj9xr4qgxlQuC9Dk7YrJYLtZ8EAXSxbZpF2fB
 Q5eVsTAQm4omIEqkTLek0iQE0bOykfTOGulo1LTq/leQP7aTDWrDZ0HJjZVcUP5AsAX/pv2jykuG
 sa6OjsoVSx/uA1PJMdmuiWLGMG1QP35nsYfP84c+RFK3Koncrzo2qzUXhYMxBcR8B3DkdbpmEtNA
 OatUZoTmAPuv3DVcIoCdt7LsSikJereEVg==
X-Report-Abuse-To: spam@spfilter-1.sesg01.sgcloudhosting.com

From: Fefepigese <devicetree@vger.kernel.org>
Subject: [your-subject]

Message Body:
Missing the Romance We Once Had 
My heart is a library filled with stories of us. 
In case you have a bit of free time, could you please take a look at my page via this link: http://tinyurl.com/ytmxamew#DaYxnZ   I've uploaded some new photos and updates from recent events there. It would be fantastic to catch up and share our experiences.

-- 
This e-mail was sent from a contact form on Atu (http://demo.athemes.com/atu-startup)


