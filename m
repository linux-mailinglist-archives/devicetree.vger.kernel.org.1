Return-Path: <devicetree+bounces-319137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tWBRIoMiRmojKgsAu9opvQ
	(envelope-from <devicetree+bounces-319137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:34:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 641106F4D28
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:34:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.spacemit.com header.s=mxsw2412 header.b=sNqtjJf2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319137-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319137-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D4023044F77
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 08:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC57428475;
	Thu,  2 Jul 2026 08:20:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAC82C21E8;
	Thu,  2 Jul 2026 08:20:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782980431; cv=none; b=n6zv48/hpdl2UPUPIH+rfD9ttzKgfhbIJDLytgzms4owOh4AcOpMrXT2NtQGKgnWmfAMQwVg3RQ7UA2iddueVFU4WmDPyiC1YmITJ5KcVzzDIymtFxl4avyQXQIFSwnouGn+neg5wevROL8B9C2crIPy8vLwcKAexRVZHgiJvJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782980431; c=relaxed/simple;
	bh=3tcD0Vtdp21AQXkfTlPs95Zl9wYOFIGlxih4N4h9StQ=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=W78pt+bR9MBb4W1fdv9G5b2OVe/bEKJy0weruyNigV7NgPXZhAK04FIGUpdQ4Xy/A3Urw6fGuWx3HT4pz4wYj/K7hAUcLJLoapE9JrKuuW6EN+W1OOdbig41Zje1nCK2ORZGTi9UHmHk0iTpz1VRxb5TFS3IKg82lwJitaxIycY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=sNqtjJf2; arc=none smtp.client-ip=18.194.254.142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1782980400;
	bh=3tcD0Vtdp21AQXkfTlPs95Zl9wYOFIGlxih4N4h9StQ=;
	h=Message-ID:Date:MIME-Version:To:Subject:From;
	b=sNqtjJf2kQN/g0Pk7G3kmXHUfWM/kCPPcxWXOT5tBGd+OitdNMHKNy5HP+wwy9Cov
	 Vt1Mz7c9Mg+57XPOPc3hLsfFPJLiEzbRSs3vg9vFXBz8a1osWhoUAOdUPKA9Tovaxs
	 +ny4A8s9BSIlKiyUuGHN6c9cRwDW5n7XZVgIS7X8=
X-QQ-mid: esmtpgz16t1782980398t64e51a94
X-QQ-Originating-IP: 9vM7/i79yZjCOzv6+3QoAO5ixH4Sp0huNw3+3vzLCXo=
Received: from [127.0.0.1] ( [120.237.158.181])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 02 Jul 2026 16:19:53 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13503955215817398908
Message-ID: <BDD9553502347B02+ee3069d3-eb04-4a37-b364-107cf8d0653c@linux.spacemit.com>
Date: Thu, 2 Jul 2026 16:19:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anup.patel@oss.qualcomm.com
Cc: adrian.hunter@intel.com, alex@ghiti.fr,
 alexander.shishkin@linux.intel.com, andrew.jones@oss.qualcomm.com,
 anup@brainfault.org, atish.patra@linux.dev, conor+dt@kernel.org,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org, irogers@google.com,
 jolsa@kernel.org, krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, mark.rutland@arm.com,
 mayuresh.chitale@oss.qualcomm.com, mchitale@gmail.com, mingo@redhat.com,
 namhyung@kernel.org, palmer@dabbelt.com, peterz@infradead.org,
 pjw@kernel.org, robh@kernel.org, sunilvl@oss.qualcomm.com
References: <20260429125135.1983498-3-anup.patel@oss.qualcomm.com>
Subject: Re: [PATCH v4 02/12] rvtrace: Initial implementation of driver
 framework
From: Zane Leung <liangzhen@linux.spacemit.com>
In-Reply-To: <20260429125135.1983498-3-anup.patel@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N/QSj4NLaJeC3dgqClwKp2ylPragx5WZbygqYZNTBKsOI/a4I0bRGRy7
	0nymkw9zOtQvACD3Lt0Y0hWV+WyS9Ke1xdHmHDlUt31CFjxrhpEAymSfDzspPepFM9AaXD3
	RCOxkiaY2hahnMhjO6RrH+IxrY5EMQIg/YMA2EbNccD7f8P+ccO7UZmKuWnO2lTuh8PcmH0
	zbk+OpEYvZUNUk/oaCQM89NBIJWJ8Tv6Bh49oOGgf1VcpAr7OJYhICM0sPtpAvgX3xFtgCX
	DAeqi0l3x5Pxtah6qFYV+gJM/2YQOiIZ0hd0XCQnk+nL4/B/zb3WoXv/dolKQcKJk1YjA0U
	BEU3F63jskGlFXeOTCznCZWCFxAxLynEP6wZojMOJ3EqLqZ3qPLzEMXNKFfvByllCS4KTC9
	v9GF0MwaUGveEXfH+cbbRvBN3UQEqarmD/lfJPNYMH9oWZeG2J23J7CPzj1O1pVcQiWWSfx
	IKZ6RgmzXrmSO4TwUTvJOAAXNHgTah2cJBKaI5fG3O1ihPT+L7ctuaG1maM4vv1Xb9tR5xO
	U+z0QRScnlxy9PXXcr5ziRAxGB/m++uSBETvlj/Q505gbVMVPRruNcJjSR26G4j6mkHLCyA
	hAPXeKBwco29pUXdfbz2WU3hDOYUXOST4THF1wa4qipEU0Xeu8HdLjLcPgnCVYBGsLtM0oh
	6AL/jYJ7r/gJxsvupVBdl9b0I/budxOufuYd9vGOspV3d/qVP6nU2/r5hOXtNotH/DvEvt4
	RwfGwr/v064lDZ3LpYxizbHD9CcgUqVnPqK2XzTOWmjC2U4wUrGiP/bSy/wTY2Wo934zmuj
	dDVh/RuULaScGN6aow9na2oYmxY88KfMM2jEknaVNY5YOQJcvS+afT+EkudTHb3wwLYutGp
	WtgOG5MD0Mjiwx8HXxiP95BKTgHM2IrZwbSNU/ZEoZDWAOCGMTlQ06KCTQd97mNFn7EGhfb
	M0mslQbNj7CKVYkoKex1GIAVAPh9f1Wk4iOiyOaz5wMFdwmfkh3FyEGQgzaOD4PslHz0=
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-RECHKSPAM: 0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anup.patel@oss.qualcomm.com,m:adrian.hunter@intel.com,m:alex@ghiti.fr,m:alexander.shishkin@linux.intel.com,m:andrew.jones@oss.qualcomm.com,m:anup@brainfault.org,m:atish.patra@linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:irogers@google.com,m:jolsa@kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:mark.rutland@arm.com,m:mayuresh.chitale@oss.qualcomm.com,m:mchitale@gmail.com,m:mingo@redhat.com,m:namhyung@kernel.org,m:palmer@dabbelt.com,m:peterz@infradead.org,m:pjw@kernel.org,m:robh@kernel.org,m:sunilvl@oss.qualcomm.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[spacemit.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[liangzhen@linux.spacemit.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319137-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,ghiti.fr,linux.intel.com,oss.qualcomm.com,brainfault.org,linux.dev,kernel.org,vger.kernel.org,linuxfoundation.org,google.com,lists.infradead.org,arm.com,gmail.com,redhat.com,dabbelt.com,infradead.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liangzhen@linux.spacemit.com,devicetree@vger.kernel.org];
	FORGED_MUA_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 641106F4D28

Hi, 

Based on the current framework, I am concerned about how to support RISC-V ATB and reuse the Coresight component (ETB/tmc/TPIU) in the future.

Zane



