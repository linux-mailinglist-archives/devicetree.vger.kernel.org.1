Return-Path: <devicetree+bounces-93186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB70A94FF0D
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 09:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54B691F21421
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 07:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4FFF3AC01;
	Tue, 13 Aug 2024 07:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O6mi59GQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6B3524B0
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 07:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723535266; cv=none; b=S161SUGv3easmbk+8MlyoLTz4bhEei/Jk8j4Ao4b66ZoiDAiET00XsibJ0SmnAnV5Ky8WH3A9c70PhS0+IsS5xWA2VtuS7B24w+Ap7EdXvnweWHIaeaizfFBPEciw9SsGqZza8ebmtQe31AGEyYZH440bXEuUI/n8IrZ2yxbYVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723535266; c=relaxed/simple;
	bh=vN5Cs+IR+dkp2j+NgNguSJe9WM2ALMhxivv+EozsV3U=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=MiYfuhi55xcm9GvUJRzIK79nEYyTJIRVVNkhGWdHFzyb44qyZHAc+FEvP75EQQE4OMLUoVI4YYAWZSGo7Ui8OQl2AmfGmcC718p/v8SNdJFyQmod9u1qafYGM3TEZV6jvBsyW1PfBs0brVQ82b6Z65s6OeGNrLzNf3xJCgvhH0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O6mi59GQ; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7a1c7857a49so2913057a12.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 00:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723535265; x=1724140065; darn=vger.kernel.org;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vN5Cs+IR+dkp2j+NgNguSJe9WM2ALMhxivv+EozsV3U=;
        b=O6mi59GQKI0tS3f352vS9bpGHgcHpNOYtldZtfhZKZYMlSsEiYvFyMCoDJuMCdTYXc
         PYNxFyE5ow4D/4BkiAUpiKwaxiVHUYhJfC7SVEmfIMgG0HlEEGrBHtXwTWCvpmDT7HMj
         kio2mSPyUg7TzplVR1ghPvLEwL+usju0pbGhBxfnM34nB6X0ZqgCfN98P1L7OSDsq3BI
         PXSjJnPx9Zt2yHqqBJZ0ySh5QFZJBOq2Rm1h3nEBblIgnX42/uoBpupWcOK8U+RGcMVk
         0McezIT5upuD3xRNq66F05G+znyD/667uA2g1I490LH3RkHSkd5vAS4lYCCoPJsNu4ON
         UPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723535265; x=1724140065;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vN5Cs+IR+dkp2j+NgNguSJe9WM2ALMhxivv+EozsV3U=;
        b=JZZTLUDdCA4Hl6v4wp9GNdlKqhH8k2T+oLiLYoO5+V+le3DcKZbHW7I0TOvWZ1ofwy
         T/b17iGZVZ0rd/aTzdiQ2XYogC24UiaoDibxdsCbZhyXLTfCuzqm1YgMrfuANhIJjFYw
         Ct2mVCWUFIMSAsn1j7SQwwU75tQd6LV+DT5WcIZicyRcSXtkPoWpe0ZQP8jF9FvBlh5y
         fevJYNgAdAVMXodNUP/31TToBg3gBqyXcPAsMLWMUC2I93Ayzp3zzW78mvsYaGbmTRIW
         tMtWubmCZaqZh8TPGcdjHHfvXcqI1cqqVkY6PNEBW6cDONFZdg03YtXJpikXQVGhm00f
         r1PQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBQnwGJsWQMqWlKOu5EYEHxDb19GIxT3GI7aT8B0vgw9PxX3oPf5wYQ4pzrDRkV56tBE88ZTcdX3UGkRIiFzZiAcVkaZ3yqRTgcw==
X-Gm-Message-State: AOJu0YyOyi1uui7cL9zhVgINARc7BLOrzevb8QQ8bOER0RuZeo7xpNEs
	7T6FoRhORpP3KojP8TUAc7Okg/5qoOYiDBjSCTMgOL7+NuJCH9DBzTyJsQ==
X-Google-Smtp-Source: AGHT+IGDSooQH0aFsWeo37x3WlN6xReAgrxPJtaZS+P1+m+Y5G4GJD3vhHWpwBsVYoSCowEPcRXLPQ==
X-Received: by 2002:a17:90b:33c9:b0:2cf:c9ab:e727 with SMTP id 98e67ed59e1d1-2d392640c34mr2959075a91.31.1723535264680;
        Tue, 13 Aug 2024 00:47:44 -0700 (PDT)
Received: from TYZPR04MB5973.apcprd04.prod.outlook.com ([2603:1046:c09:1962::5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d1fced8f5esm6548920a91.20.2024.08.13.00.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 00:47:44 -0700 (PDT)
From: xiebo bo <xiebohao1234@gmail.com>
To: Anup Patel <apatel@ventanamicro.com>
CC: "Alistair.Francis@wdc.com" <Alistair.Francis@wdc.com>,
	"anup@brainfault.org" <anup@brainfault.org>, "atishp@atishpatra.org"
	<atishp@atishpatra.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
Subject: Inquiry Regarding Guest MSI Interrupt Handling and Verification in
 KVM/KVMtool
Thread-Topic: Inquiry Regarding Guest MSI Interrupt Handling and Verification
 in KVM/KVMtool
Thread-Index: AQHa7VTyZysCu5T96UC7VdJ6QVX4Tg==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Tue, 13 Aug 2024 07:47:39 +0000
Message-ID:
	<TYZPR04MB5973460EF5AB2343C0C4E0F0AD862@TYZPR04MB5973.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels:
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgYWxsLAoKSSBob3BlIHRoaXMgbWVzc2FnZSBmaW5kcyB5b3Ugd2VsbC4KSSBjdXJyZW50bHkg
aGF2ZSBhbiBpbnRlcnJ1cHQgZ2VuZXJhdG9yIGNhcGFibGUgb2YgZ2VuZXJhdGluZyBndWVzdCBN
U0kgaW50ZXJydXB0cywgd2hpY2ggYXJlIHNlbnQgdG8gdGhlIElNU0lDIGd1ZXN0IGludGVycnVw
dCBmaWxlLiBJIHdvdWxkIGxpa2UgdG8gaW5xdWlyZSBhYm91dCB0aGUgZm9sbG93aW5nOgoxLkRv
ZXMgdGhlIGN1cnJlbnQgdmVyc2lvbiBvZiBMaW51eCBLVk0gYW5kIEtWTXRvb2wgc3VwcG9ydCBo
YW5kbGluZyB0aGVzZSBpbnRlcnJ1cHRzPwoyLkhvdyBkb2VzIHRoZSBndWVzdCBpbmRleCBmb3Ig
dGhlIGd1ZXN0IGludGVycnVwdCBtYXAgdG8gYSBzcGVjaWZpYyBndWVzdD8KMy5XaGF0IGlzIHRo
ZSByZWNvbW1lbmRlZCBhcHByb2FjaCBmb3IgdmVyaWZ5aW5nIGd1ZXN0IGludGVycnVwdCBwYXNz
LXRocm91Z2g/Ckkgd291bGQgZ3JlYXRseSBhcHByZWNpYXRlIGFueSBndWlkYW5jZSBvciBkb2N1
bWVudGF0aW9uIHlvdSBjb3VsZCBwcm92aWRlIG9uIHRoaXMgbWF0dGVyLgpUaGFuayB5b3UgZm9y
IHlvdXIgdGltZSBhbmQgYXNzaXN0YW5jZS4=

