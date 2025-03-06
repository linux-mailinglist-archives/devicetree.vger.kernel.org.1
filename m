Return-Path: <devicetree+bounces-155133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7D4A55B62
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 01:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA6161888E7E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 00:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33AAB27706;
	Fri,  7 Mar 2025 00:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=delugo.co.za header.i=@delugo.co.za header.b="W4SPr/zX"
X-Original-To: devicetree@vger.kernel.org
Received: from outgoing12.cpt4.host-h.net (outgoing12.cpt4.host-h.net [197.189.249.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4C625569
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 00:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=197.189.249.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741305830; cv=none; b=uQx9ASOvWluRenm8Y7nQsL9u0YrVOcMjkL8or1QEl2ZtWZssH6ff2/oKzaSy58em9JagPrwgobfGA7E0P0s+f/Ot3rRq/eMD0o47sdcJht/FRtvPDo/zgEfZII+9gnG3QZMPLVnDIqgnG3p0ZBcO4ISoaAeUuoV0GssZG0k2ATw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741305830; c=relaxed/simple;
	bh=UOdy1uc1Ja6Ouzx9Gp3orqw2OLpxN4Hd+lHG4CKFzvE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=EnvqcsKYlDKaacJ0wSaEtelnVQ4df3Hs5XWcILc5CSDgO5+JoT5r0uQhJ9z2UJvRvdxCSY9ARWskGAJ+MU3CDO++QWsyBuTHwyDfTwXNcM3z1A27nubLBrNyNByEu3H6MNB2bm6puPJZNHzacrF7Q0cNDri0aAmcl8Pwc/Du7io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=delugo.co.za; spf=pass smtp.mailfrom=delugo.co.za; dkim=pass (2048-bit key) header.d=delugo.co.za header.i=@delugo.co.za header.b=W4SPr/zX; arc=none smtp.client-ip=197.189.249.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=delugo.co.za
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=delugo.co.za
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=delugo.co.za; s=xneelo; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:sender:cc:bcc:
	in-reply-to:references; bh=UOdy1uc1Ja6Ouzx9Gp3orqw2OLpxN4Hd+lHG4CKFzvE=; b=W4
	SPr/zXdp7+DEUUDCAJcA2Jtkl3RTYmnjW/8PVfZdtbbZ4oAj6xw5CZbAkK7vB4m8NUpmk8c2YosqF
	rhDvyfZSJRcNPdoWBBnjGvZQ79hVuY/AO35sVfIBjut/aWY3OHlXf7Lu6aazw9X1HIbSWGRSMSrH/
	6dMH6QCJTu0fV2oEfBp9CZX2plwPyFKkSIgfmzX958anyV7KRRjlgLTDXAm/I6Sh5hrYg3MyxAoMP
	DUXe7P2TEo2AkEX+jJxc3UhFRnQ0xNuhKAgIGbW2lX2nCEpx1MbRmVxUDGfgdCeNQ/xbPfbOaE0H9
	8r+GlXiL6Xk1RIotejmLPiF1GFNMkWAg==;
Received: from www46.cpt3.host-h.net ([197.221.14.46])
	by antispam2-cpt4.host-h.net with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <orders@delugo.co.za>)
	id 1tqK5D-0047zU-RO
	for devicetree@vger.kernel.org; Fri, 07 Mar 2025 00:52:53 +0200
Received: from [104.192.5.240] (helo=delugo.co.za)
	by www46.cpt3.host-h.net with esmtpsa (TLS1.2:ECDHE_SECP521R1__RSA_SHA512__AES_256_GCM:256)
	(Exim 4.98)
	(envelope-from <orders@delugo.co.za>)
	id 1tqK5D-0000000DmNA-0R0W
	for devicetree@vger.kernel.org;
	Fri, 07 Mar 2025 00:52:51 +0200
Reply-To: barry@investorstrustco.net
From: Barry <orders@delugo.co.za>
To: devicetree@vger.kernel.org
Subject: Re: The Business Loan/financing.1
Date: 06 Mar 2025 22:52:47 +0000
Message-ID: <20250306223012.B6FE211F415E4DB4@delugo.co.za>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Authenticated-Sender: orders@delugo.co.za
X-Virus-Scanned: Clear
X-SpamExperts-Domain: delugo.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@delugo.co.za
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.75)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT+5DhM0jw86KsbkaGfFMuQCPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5yOHTdQik0kM+e6Ms1j+Yjst8C9mOBdONdnsxgsk1D2pw/C
 h5SE4jAyhe1COeASyU/2eYdgLivhdeufWiye511G4ld5rdi2ZxohSIq+dqifZlCd7avjZD0taH/y
 4/+XXYqWrRCR/TGJ+LxBEbBCS4VQhbGGV64cVSYcP2YC3p8uWs7Yc9LzZDl/BJuHI+g/8HVJpmI0
 71bWBu5BNTe7wFyCnh3a5vBW18gsvawjm2ajtK7VZqJmzCeHtqZ+QtMgTB0iLwRMaKsK8lAeAhb+
 aZDwTMQ3Kg3hL2oXz5A5E5R/dS4GkJ5hfB+qWugfDEytZYoACfRtBjLzEjgIZNLWhI/M137eOf6N
 RB/j0ivUpaZqI8fh8bbok1C/KftraXn4bBWU/86+VeHQfEPfz3YUMMqBqSIGAS5g6SocktP6HR2V
 1Mnsv/4cfDtSkJz6hRSdrQzTHuxweXeDMpjWlleKrN32mP5wriU8jSHrtsnI5JD0GxR9Ovbqz/k9
 Jlx8RTZkJCspOMQJvQ/Ck3iiU+4DQAj366V+bW1tsfg2xPA2CLYwN84+SW+DL5+1ec8lBNKn8Rj0
 3SuRo2LznmAWN0MOY/3Dn3xriYIDKJuyWRMBsMZVihbq+sSHvC+WfaMBEJOSE0AlS9YoHFltGqun
 dRd2vfQDxRcLZivEDcmpAbM9ZRc0Alq9oGq7mjcOPoVxa1p/QPl2h0EEwfIgbv/J09XLof9u2GCS
 jvxqrHPrHCYUWFgHcor26SQ2SWEYeyUhqp4ktHBUoXAOl772tkAFRI6aswDW+Uj9pJtt6B8Tpsq6
 DWJdj2Xnc6jMUUXOkUFY5B+P8Wul7mJaw/iwwebBuk5LV2jMILC2fFbQBLMNMOLysyB79ZMJCHTP
 HTgQEte1jtLMUCqmPfgZ1bW4yXQpgwwgMMWk14/qnUAcO7jpJHYNgbE1NaYwMiapd0qkXA5KI/7V
 mPb40obrdWL7kIiRcTpQDerH
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net

Hello,

My name is Barry at Investment Consult, we are a consultancy and
brokerage Firm specializing in Growth Financial Loan and joint
partnership venture. We specialize in investments in all Private
and public sectors in a broad range of areas within our Financial
Investment Services.

 We are experts in financial and operational management, due
diligence and capital planning in all markets and industries. Our
Investors wish to invest in any viable Project presented by your
Management after reviews on your Business Project Presentation
Plan.

 We look forward to your Swift response. We also offer commission
to consultants and brokers for any partnership referrals.

 Regards,
Barry
Senior Broker

