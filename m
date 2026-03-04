Return-Path: <devicetree+bounces-271264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCjTKJSaqGkGwAAAu9opvQ
	(envelope-from <devicetree+bounces-271264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:48:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BC4207B6E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 133A83028EC7
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 20:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ABA6382394;
	Wed,  4 Mar 2026 20:48:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5799A37F01B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 20:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772657295; cv=none; b=luTrwtNufoW0sciMXjKTW/Y3gnfXVpiiJBKvs0j2h00qsyJk/u/NBwIoqDX5Qk46JL9Bes9BU8LOr5oWfGJ4+6OlyqVUOgKtwZ+dReLRFJDwZScJL1o5Es4IrRG5tydw6g4WJodB6okhcDBn822UFabNeXT6dn7jTIY2DYmZinE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772657295; c=relaxed/simple;
	bh=UJxxerwHojYuB4Aq4cfBMQSvONFhwkRKMlsX4DBJyHQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=joqHoEddUZ9NwdeeC8FMJf4sqlMUYeR8aJ/rCgt/5V40BJdKGwS2aD/jR3vRtsl1kVEJRj+2LZciBi75hDXuLJFZQCykoO+DY4DrqIUaXaxRGs0oLjAw1Hu/j1aZhMWMyfENs3R9vmSt8oHU4G+7UVs21SuUkBECz+U2Sp9ccrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=pta2002.com; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=pta2002.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4327790c4e9so5594806f8f.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:48:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772657293; x=1773262093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYNFqupRvkwAilNqSDcz2z6T7EuDcaIGLGnq2s5luwA=;
        b=nXoEQR/jUY/Y110cERLSy6gkMc5fnAj2eT/VL2DNlonGAV+xwFfzyhpHF8oL43ajmq
         FcnQrb4r/oPoFJIt7j8qojcewZ0CJ2tUrbxHgei05eu7B3wKFrPTbP2c/20Be8NHRSzR
         s262hH3EQv4x9p7RMbrNTDS3ih8NVxWaBrSXyu9ziSdjm1MO/6L936bJQIfKl6gZgoMM
         W0XapVWwStUvUGOXi1vAi8BtoChsfa0ZMPKoaSiJpVpU0Dv+m+CsbaYcJJ14Vd2gmCQW
         jEwShjcKDiZfW8NKhFsM/AbgeeZunaq5GLuT8gvYYXL+K5VufrD4sy5xbXxdfVrI7tZg
         Ch+Q==
X-Gm-Message-State: AOJu0Yy5Wne4QtNRAaDP02Ie0JjMuGqM13Fn0nvf5lLwZ/vCNNTDZKFl
	ic/gRUw85QpRJYhaDwfWjgk8bWASUXZUR/kMuNzt9xpmvy+gTEV9FJIz
X-Gm-Gg: ATEYQzw5Q50j/9NpTaZq7aa3sd+gJfvzbMe3mXS9Pd38oE7wwQyZVolhPk0LKEhIKv0
	VNfA+pYy3UA5RF+OOE4QgyL86sUbpPCFsp0MYOJDwj/4PLezk04TX3DXwd5SEGVRaxclALyzljz
	UUAHu3Pa28icFmb0OH08iULKEUbgeaKgc/P11yNcmfBoDg+CnsLkddPuRXHqSc6rZyJaNkyiPuL
	/lqkck8bob+j6tCCghOJnw9rA7GR3+q7ZFQnkgZpiWqWX3r6Ms5363Nq1/4ETlmR/o+O5azgMeV
	/nZWjfOiKgX/nzmjU88QISbsLtzMCoeemJiI+4Rq9yan1Fgk/kZW73uQgldhlc3Vofxa5YWzIIs
	hxV8AI72MuYsXOkKF5BUC0UGOosIn6GmKtqNZbKmf1GRnN4KlwjozIqXgg9K8xM51rWIO1aVIOe
	wdLoPituW8/SoAK91X/15UxTlGqqKL6ncSRqbxTFkx3r4/VjATAYk/9Aqno3A6mMntH6pbxqhvG
	VN2VOsAhRFMYZ2d25vVC6Uz88EN
X-Received: by 2002:a5d:5d07:0:b0:439:cce7:d04d with SMTP id ffacd0b85a97d-439cce7d0a0mr2269547f8f.58.1772657292586;
        Wed, 04 Mar 2026 12:48:12 -0800 (PST)
Received: from ?IPV6:2001:818:ea73:e00:b102:ff11:db49:2389? ([2001:818:ea73:e00:b102:ff11:db49:2389])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ba2a5970sm22469059f8f.33.2026.03.04.12.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 12:48:12 -0800 (PST)
Message-ID: <7d3c5e4c-37a8-4d12-a7da-3b4d159a8d4d@pta2002.com>
Date: Wed, 4 Mar 2026 20:48:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>,
 Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
 <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
 <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
 <24285215.6Emhk5qWAg@phil>
Content-Language: pt_PT
From: Pedro Alves <pta2002@pta2002.com>
In-Reply-To: <24285215.6Emhk5qWAg@phil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D4BC4207B6E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[pta2002.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271264-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pta2002@pta2002.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 04/03/2026 20:26, Heiko Stuebner wrote:
> I really want pin-names to reflect the schematics. This makes searching
> so much easier. Sometimes things slip through where that doesn't match,
> but the goal would be to always move to improve things.
> 
> So at least the newly added hdmirx here should follow the schematics,
> and if you are keen to bring everything in line, you could also change
> the other boards. But please make sure via the schematics of those :-)

Thanks for the feedback. I've reverted that and will look into changing
the other boards in a separate patch since there are quite a few.

