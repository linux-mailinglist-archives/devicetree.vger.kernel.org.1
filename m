Return-Path: <devicetree+bounces-320457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bv3XEFTLSGqMtwAAu9opvQ
	(envelope-from <devicetree+bounces-320457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 10:59:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A037072A5
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 10:58:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=iurhp0ka;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320457-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320457-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB289301A93C
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 08:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A772E2EF9;
	Sat,  4 Jul 2026 08:58:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDA73A1A3F
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 08:58:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783155529; cv=none; b=h8kqEsdlgGwleOBTcI8kKu5+fGMtqJWcfbdy28cKbwl9MeqdW7DffspB5YtO+r5WZQJASW0gdrCMb0f9BnKLk2TljDgXVPh9AQl0agoDSYdalmHkP2+sz27sEdqSC1Afr5+1YK6ZKX4G7sP9MGf1HdglH9jV2iQHxvYPVUQW5hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783155529; c=relaxed/simple;
	bh=GO0cPmRaJ+HhoODbOUmJooxCNjwQwnK9RN6Sj23Fxbg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HEKNq5xGpZqqyxT975JFvYW+xZTR1jQpnasfznJpp+s51GCLGCAOs7UrUPKDTlPMO++LnG6CGKATfP6oZJ4gtQKyOua4kNOffoimxn3yD7D6WRn+b7OFcipUkWo5RyUd7mCTEnp5BRMqjEkvOtsv7LSGIryARRk63xeY4quisBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iurhp0ka; arc=none smtp.client-ip=209.85.128.175
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-80bab6cf5ebso31026847b3.1
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 01:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783155527; x=1783760327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=th9Jzp5gWYXL8UheexAgAZq9F8KzRdESqUqY/zvS74c=;
        b=iurhp0ka4+sQspOkzfmtRxfaXR20joktFvOY3+SR6BFKoQabAEUVIlCKI7D5Pt4uf5
         atZD9ghwssTpRBIwI1xv5QHKZdMbMfSf2Jjn/lq72rADXBUV7G3nsEVYe8kEG2r6pyKv
         TRVS3RuI6Pl5CWouNgycCky0e2lJP+EDtgnWGbgNEcSVKFVVt5lBnmN/1s+l5/WqDWgI
         B5iv/1BSsDtLVnJUOuTahAxiETFOThbYYQn/8jsIUb8pAM72fTSeIOFVzFu5l1oZlh/T
         QfJl6+ymRokEBl1AbF6oK+SI8sfraGtThwIf2MEdEELRMVRuHNw2Rkw/R6Pb1XBK4pfX
         Bhxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783155527; x=1783760327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=th9Jzp5gWYXL8UheexAgAZq9F8KzRdESqUqY/zvS74c=;
        b=k0LFpi3gZUggAhO5nrc4fvZi1FjRHTJe1qA0sntWKzzbwK24syBswivSBmqterSV3t
         z+JS5VzSxIKfCaignaz4ECFNXHGiriimrU+6esmyHRw5dCAK7I7NjPrjdiBEVE6REcgs
         pJhRdBVV+ZJEc2ou8W9yq6oRxLOaHLZ6o4fyit9XXLFfeydmL5zfJs1FQWoOAA2IZJ0M
         GdLr5FFvXe8/duCswArVLOHFwxsIELmOU/SX/Vlcktj+zw456v3XnCbumSMFnCXTJDBA
         p4b1YeYQuJJjn3mNH1JmrcdO2b9rRp1H6xttmt9ikROnmnWcK3AwKxW1KRBVzOdS4KS/
         EAtA==
X-Forwarded-Encrypted: i=1; AHgh+RpbjcU31EzL63UmSQTI7IygtK7UA/PrFlIL+wks8tJboe+BuvxALurMd3yDJ/x3osRx6FXCd2ZX/Kj4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4nhON/aK0+4Unmk561hW7YvAoIJX+kqRa5UadkJdnIJzVumoH
	FVP1JXu7oyYXOhggwUcvQh31YzjSAEo+NjpIyD8vT6DXJEdfL68omqnb
X-Gm-Gg: AfdE7cn6akrQrrHkkwadlb3VoXsA9OhDyFPYNB2iJv5jgm4GPUFdIgbwE4Y8Se8JoWS
	0mqW6ZYR2Lv4SYGIEGdqusbUyF2XQN8n1l172CsyWe2vHE7OHuhZjowu2Uli0iXnL/qE/8qF6QC
	P1BmyPIsvjsNKqoAE5UGzPFgGTBzikK531rjmZZ957bJIn5uGulmdSvB/NgMc6xrNBe1QFkpbME
	UrAX2aruzC0jqlD1UK8huC+wm+YO+CY/qz346ZbHoXS6oZDf6QIryVM/bkLs9uLTBpK5MSPUdb8
	tbZFTI7ZQRMeaLZuM92A6a8AD3h98ALirjoZAvLucraI92pQEng7Z7RV18FtVmjf1M5TsbcxY+d
	8diyOEliTP2zWb4RP+1qgE08EpiezYAfg8RnQNsrJoc8DDeGLW5VYz18uKxe25RYVeIB9wbVMAa
	E1WQRuIqZ+i4tD2tQ=
X-Received: by 2002:a05:690c:6088:b0:80c:9e87:8108 with SMTP id 00721157ae682-817423a4278mr24400637b3.15.1783155527356;
        Sat, 04 Jul 2026 01:58:47 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8144b73221dsm33341637b3.39.2026.07.04.01.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Jul 2026 01:58:46 -0700 (PDT)
Message-ID: <2dd8c0a0-7443-4d43-972f-979b7ae4b666@gmail.com>
Date: Sat, 4 Jul 2026 11:58:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm7125-samsung: add initial device
 tree
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stefan Hansson <newbyte@postmarketos.org>,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260703-sm7125-samsung-v1-0-3e5f752048c1@gmail.com>
 <20260703-sm7125-samsung-v1-3-3e5f752048c1@gmail.com>
 <c55742bb-b25d-4ac4-a3ca-4782edacd5d4@oss.qualcomm.com>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <c55742bb-b25d-4ac4-a3ca-4782edacd5d4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-320457-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brgl@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:newbyte@postmarketos.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97A037072A5

>> +&usb_1_dwc3 {
>> +	dr_mode = "peripheral";
>> +	maximum-speed = "high-speed";
> 
> Does super-speed not work (if you also remove the qcom,select... above)?
> 
> Konrad

I can make a file transfer over scp, but the speed is inconsistent and
slower than with high-speed. It must be because this device does not
support USB 3.0 (super-speed).

