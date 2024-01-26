Return-Path: <devicetree+bounces-35523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E20FC83DA4C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 13:48:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97BF61F27326
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE19717BAF;
	Fri, 26 Jan 2024 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lifebonelli.org header.i=@lifebonelli.org header.b="IW7vAP3A"
X-Original-To: devicetree@vger.kernel.org
Received: from dns198190.phdns.es (dns198190.phdns.es [185.18.198.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60E213FFB
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 12:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.18.198.190
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706273302; cv=none; b=smq0exuK7v7QpiSa0nEhRJGK54o/mMdEmtDa67ehmCX/w1n1AkvY8cNRIFqV0K+0JWQ0U8G4uiplhFwjKM6smB8ycMlZQxV145vsicuPp8L1QGt7B4qOsSMfLJQzhQMVxLh7EQdRgrPhsyRRR7AhQMKPjesX9D+xZWOGHv6KtoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706273302; c=relaxed/simple;
	bh=gCCNXEUlrT19Olp54UwE3L6il6+7r+zR83Bx3BX7YKs=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=cH2ovxX5g/L7rGKqj8PXUxSfFbcCTacyhXwSE0NuOuHE9fsFCSYsL1Ps3oFbyWmFfAonk8F3k4TDx8RyRmKOe3xbbejUk/bdQ6te6tY2WjUzaJBKQhmjdJAo7t0FOberoEN0nxab7RY6ZKpKbOy9iyzKRb+7NZfxBynnpefc0bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lifebonelli.org; spf=fail smtp.mailfrom=lifebonelli.org; dkim=pass (1024-bit key) header.d=lifebonelli.org header.i=@lifebonelli.org header.b=IW7vAP3A; arc=none smtp.client-ip=185.18.198.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lifebonelli.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=lifebonelli.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lifebonelli.org;
	s=default; t=1706273293;
	bh=gCCNXEUlrT19Olp54UwE3L6il6+7r+zR83Bx3BX7YKs=;
	h=Received:To:Subject:From;
	b=IW7vAP3AYM95uk/GkPpW5OlnEmaAWCmeLomW1qFZDLQgDH6rFXQASpTnIhCrC7q/D
	 7bdnkIBB2jg4xBGRsQxR9Jwhp+NCF/yyXUCsGjxUzbWVGf+qfdxmFV1ZCmmB6vSqHP
	 f7oQB0TDMxr/5plF3+KjvnWpS9HJ/w4Fi2e8yyjI=
Received: (qmail 31140 invoked by uid 10000); 26 Jan 2024 13:41:32 +0100
To: devicetree@vger.kernel.org
Subject: Copia de: Feeling Invisible in Your Life
X-PHP-Originating-Script: 10000:phpmailer.php
Date: Fri, 26 Jan 2024 13:41:31 +0100
From: Life Bonelli <no-reply@lifebonelli.org>
Reply-To: devicetree@vger.kernel.org
Message-ID: <bfe4e2578425d91b3ee8d2578f9b0592@www.lifebonelli.org>
X-Priority: 3
X-Mailer: PHPMailer 5.2.6 (https://github.com/PHPMailer/PHPMailer/)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-PPP-Message-ID: <170627289198.31132.4249722533145526071@dns198190.phdns.es>
X-PPP-Vhost: lifebonelli.org

RXN0byBlcyB1bmEgY29waWEgZGVsIG1lbnNhamUgcXVlIGVudmnDsyBhIExpZmUgQm9uZWxsaSB2
w61hIExpZmUgQm9uZWxsaQoKRXN0byBlcyB1bmEgcGV0aWNpw7NuIGRlIGNvcnJlbyB2w61hIGh0
dHBzOi8vd3d3LmxpZmVib25lbGxpLm9yZy8gZGU6CkFkbWlmZk5pdCA8ZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmc+CgogCk15IGxvdmUsIHlvdSdyZSB0aGUgZGVzdGluYXRpb24gb2YgbXkgam91
cm5leS4gCldoZW5ldmVyIHlvdSBmaW5kIHRoZSB0aW1lLCBtaWdodCB5b3UgdGFrZSBhIGxvb2sg
YXQgbXkgcGFnZSB2aWEgdGhpcyBsaW5rOiBodHRwczovL3Rpbnl1cmwuY29tL3ltOHE5MjJjIEkn
dmUgdXBsb2FkZWQgc29tZSBmcmVzaCBwaG90b3MgYW5kIHVwZGF0ZXMgZnJvbSByZWNlbnQgZXZl
bnRzIHRoZXJlLiBJdCB3b3VsZCBiZSBmYW50YXN0aWMgdG8gY2F0Y2ggdXAgYW5kIHNoYXJlIG91
ciBleHBlcmllbmNlcy4KCg==

