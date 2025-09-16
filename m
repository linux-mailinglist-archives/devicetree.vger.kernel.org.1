Return-Path: <devicetree+bounces-217743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C22AB5922D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B6A0161D04
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7955296BA4;
	Tue, 16 Sep 2025 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flatlinemusic.co.za header.i=@flatlinemusic.co.za header.b="scMCVMlE"
X-Original-To: devicetree@vger.kernel.org
Received: from seahorse.cherry.relay.mailchannels.net (seahorse.cherry.relay.mailchannels.net [23.83.223.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2112A296BB8
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.223.161
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758014853; cv=pass; b=PTs4mk4dmtPt98ttt/tkR/uZvWJ2J1Ov8Tabc8qIYyUASKSoeX/zWQH6xuiZGo9oEMPYVE9tj2l5R+AQjKT6cQBGaN+BdjSe3XcUD+Yy9XzfOlDu+y82aU2wb4L3sMU9eoYyjKsiBRtVg49GXtQ8fHy1zEz5flGN+T5duLLuU8A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758014853; c=relaxed/simple;
	bh=gBiwBiK46kUW3HXBzZR6938yovtSIwNHBCA1YWpF3uc=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=A5Kj0wqGEsELknw+181fqKtuBdXdrSh04vIgcIMH7DhGOj/vAZ+oRUW78glgBW+4YfLlPA9nbAePnlCyOgebESbwkF8nb+cKNUPgUA/MbtrGu4IBpMRwmroYsq3Y8nJTR2NGcrXwKif241ARVgHpM6Jr/U5bRQdet0j+8VTOBDI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=flatlinemusic.co.za; spf=none smtp.mailfrom=srv64.hostserv.co.za; dkim=pass (2048-bit key) header.d=flatlinemusic.co.za header.i=@flatlinemusic.co.za header.b=scMCVMlE; arc=pass smtp.client-ip=23.83.223.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=flatlinemusic.co.za
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=srv64.hostserv.co.za
X-Sender-Id: webafrica|x-authuser|flatlinemusicco
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 75BA86A0EC2;
	Tue, 16 Sep 2025 09:27:22 +0000 (UTC)
Received: from srv64.hostserv.co.za (100-107-16-248.trex-nlb.outbound.svc.cluster.local [100.107.16.248])
	(Authenticated sender: webafrica)
	by relay.mailchannels.net (Postfix) with ESMTPA id 646366A10F1
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:27:21 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1758014842; a=rsa-sha256;
	cv=none;
	b=q1T1p63JN6Pvw0bQOMfVfIPc3chTscaYwbAxB6s4FB2GmlyDWsfRIBL27WC6HEAEWbEAWa
	0qkpCoPsqcvCE/7CVDdvOoda7LB5/+Z/rlzvq8VYZ0xPVXA7H4k/LlcWHIlqD/gy2v42HF
	8y+afGvlD/hJrJcyT5MBjyR6J6q7qwg90pe5fQEnuG9oXztFMoGhTgyc8ovakJqDQ9/2Kg
	oO+EyqrokMgnh/8z/Pf0OXsBvIeoZvl4yc8nH8P+lyhTkdxfDhwn6EPry2so8v99uzaYRe
	ZLqGxGFnF6ONkcSL3cMJAlBpMg65apCnUttxDf5Ah67EPKOljz4AGAqG6L40uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1758014842;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=gBiwBiK46kUW3HXBzZR6938yovtSIwNHBCA1YWpF3uc=;
	b=q7tR8EVz7y2oe34+PCoSS8XV9icNjbs8vYa9x2SvWAG8Yd/qXaHJn/EBgVRqpDAA2hkh0n
	jE3dgROenCOtHWuJhCyp+uoaDSen0Yf3xLyUjPwiQjU795zlKRUoqZhqs3vj9TKxdTlHh5
	BtIXPnClsLGsJHVWTUfUMlOmMkSkFOwh9037i7vZOhVCUdC9W4ftzipu0feMfp8og/9z1w
	9pFAxEnsD2zn5I7Gd0c7DtnK45GBemNj9xRFpoHOSzwnRIepyeJgyI8O6EIvC5HLvuXb7E
	xBJ4NPVEbUO93K+5BiHCQTKlDxpT+ve4YiqjYkN6GUNcE8xOHy0RLErctYX5zw==
ARC-Authentication-Results: i=1;
	rspamd-d4f76d97f-dwfls;
	auth=pass smtp.auth=webafrica
 smtp.mailfrom=flatlinemusicco@srv64.hostserv.co.za
X-Sender-Id: webafrica|x-authuser|flatlinemusicco
X-MC-Relay: Neutral
X-MC-Copy: stored-urls
X-MailChannels-SenderId: webafrica|x-authuser|flatlinemusicco
X-MailChannels-Auth-Id: webafrica
X-Zesty-Shrill: 24e90cf847df5306_1758014842361_937959508
X-MC-Loop-Signature: 1758014842361:3629821683
X-MC-Ingress-Time: 1758014842361
Received: from srv64.hostserv.co.za (srv64.hostserv.co.za [41.185.8.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.107.16.248 (trex/7.1.3);
	Tue, 16 Sep 2025 09:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=flatlinemusic.co.za; s=default; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Message-ID:From:Date:Subject:To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gBiwBiK46kUW3HXBzZR6938yovtSIwNHBCA1YWpF3uc=; b=scMCVMlEcn7wcwhtVine+uke/D
	aue/iAkwSphte/Bf5kYdvOx+acNMKas48pyXcq1UneGiqXzNHT90Ik5A6+HfJ1zsFixevzOrm59DB
	Svpn0Y4qeEzGzJELCs7mOVvR1fF6bkKK6Ayy71QwXpf2oEBPYqgMeUMxtJOIXIfWn0rddE8Ymz4iU
	VmKbrbo8ufvlSzlIZHiimljQrb7M3e5DoTFP6rmPpkltXGjQEZe9ChUqcMnQCLs1h/o9JI7p37361
	w5ZRMAKsOmu3xp9D+3uiCKOEyKSoxqFkDCDVzFNvNA5gaxQfqGbXX7oVdkyaGi+9YCwkmAdKY+FSx
	lwalSnQw==;
Received: from flatlinemusicco by srv64.hostserv.co.za with local (Exim 4.98.1)
	(envelope-from <flatlinemusicco@srv64.hostserv.co.za>)
	id 1uyRy2-0000000BDXp-09vu
	for devicetree@vger.kernel.org;
	Tue, 16 Sep 2025 11:27:18 +0200
To: devicetree@vger.kernel.org
Subject: FLATLINE MUSIC "Welcome,  Join Now"
Date: Tue, 16 Sep 2025 09:27:17 +0000
From: FLATLINE MUSIC <info@flatlinemusic.co.za>
Message-ID: <67503c66ac328e332f1008049d4d7fd9@www.flatlinemusic.co.za>
X-Mailer: PHPMailer 5.2.14 (https://github.com/PHPMailer/PHPMailer)
X-WPCF7-Content-Type: text/plain
Reply-To: info@flatlinemusic.co.za
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender:  <flatlinemusicco@srv64.hostserv.co.za>
X-AuthUser: flatlinemusicco

Message Body:
Hello, Congrats! You're invited to discover our exciting project. Confirm your account: https://tinyurl.com/mrf4dzfj#mZI34y activate. Note: Didn’t sign up? Ignore this.

--
This e-mail was sent from a contact form on FLATLINE MUSIC (http://flatlinemusic.co.za)


