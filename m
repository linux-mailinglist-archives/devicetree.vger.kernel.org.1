Return-Path: <devicetree+bounces-264643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JJTElsvjGnPiwAAu9opvQ
	(envelope-from <devicetree+bounces-264643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:27:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A33E0121DD0
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8D7F3031302
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E58332E6BA;
	Wed, 11 Feb 2026 07:27:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F232B9A2
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 07:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770794839; cv=none; b=V3SSmxSsDkXUpa1gBySi+IFAzN3lBP2g/9xZ+VJgoDk0PaTKoizbzKBF7c7amx/353Ym9F35SuIUNw2UNyfW/Rx7pKWewxaXB69Jhw1btCJ2BYm+U7vSjOM1gn3v9kx0Xxz08qmgOkezJRaYRa9a6vpcw2xAdeLBcvbjuDMNerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770794839; c=relaxed/simple;
	bh=KHE4U5tIbOhomUd4pcaSSa9ItTiMhppFcZLSMDUeblE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t/3tTnxrKrwd3RUObbu2Ws4xj8NoMNpCAUeg1dbTTr3lHtVB2Ut9uqJvZ8+92dTL2qjJ5cwi00n5gF732i4rkWDhOTKEDvCqrKhVU6qRrb9SegGDCc7Z5yT8neXZ59wNBB0eruh1lt6snPzmUTOmDS2hdMHdaNJ7WavlIqhtOhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-649e97f1e1eso5461711d50.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 23:27:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770794838; x=1771399638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KHE4U5tIbOhomUd4pcaSSa9ItTiMhppFcZLSMDUeblE=;
        b=ZqC/CBmd8wWU29Rik9zExKptAPbhLmA9dnNw6IGiRgCFtJPA5vVFYYB/yTQBeM+rTo
         hj/cAbeaRVdkd58XGxTAiKtHpBu3vtehMAD1TKrbc7rwgGPxu+rRIJqA+IwjXk96NMvw
         KleWc6cJi8y0N1eewPbkknX87cbmQTBeNmszQi1tNt1WN95tddEDvgC+UPdLjBQh7+l+
         BMy1WrhcTNfdS77jTgyaHIsxiv2PRbEQC5Xk9wYROGS3shG12uGth0FIKCfN4ILsSycn
         zzmERoskJU+9bOC08uZVOqWFcG3q3bv34I50nPEyLtmUIA8A3NANt4E8WWJohucSkBWy
         A6Hg==
X-Forwarded-Encrypted: i=1; AJvYcCV2Zu1CzsuF4ADu3LnqtntRuqSfBP6CWlpHGtX5hVwqXj/5K6EsC3Rud7GpRpNfhRTWXy3PR3EFZhko@vger.kernel.org
X-Gm-Message-State: AOJu0YyVB9+PQLxRitWAUYmgkP2iWOvKpoN13W1+ESrapgAMh60MwHp7
	k/SkQYRg5vyoz/V5AuzyfUdr7YpVS/A4ORAl+TerKGYb/sanqFCSpcrnC/TgxA==
X-Gm-Gg: AZuq6aJEHyCO/rWQc7w7SW5pFnTL5jXUfHaAOQVGQiyCdvuIi9vfflG9E0Lmn2ns8/f
	m3ZtFs6P/oMABQ1SKPDUWruK/bjcUeTxY3BSJIXc3dZ5DSrrb1Gbbv1uYSLw5n+pyHB/C46bOkc
	En7L9oWOoQzuZz2Q7tEGvrCv7Rzhq/BUYYHNI3QnKq7cO1yjPMhWhRp0Xn0EUjNWn32E6PDj4US
	LzAm65VUEL0NY3fvcRPu1aWFJ8P2bk1i8fiBOOUBXQCmBTGb2PgshfHkvVvkHcqrnlqFaZ9cXJp
	1R1J0+k89LoN9I8NTYQgGj66figXTnudifHTZbUKrBfZocqODegjN4yn0FP8oj0E/xTKnByJnCv
	kitae/vQRG0oqZdTw7j3JB+DTuy+8V/khiEiYMi8377oakCPvYK/BxAclc+jxYVWWPoFotcjVVN
	d4QvT8OVKTUuC6ZIGVoJabBq1J43MS+ZO3E1rMWFX/B9AIbe27iv/cFJkG7ECo9NcZ
X-Received: by 2002:a05:690e:13c1:b0:64a:f0cd:d3d with SMTP id 956f58d0204a3-64afe3f7aeamr489208d50.64.1770794837817;
        Tue, 10 Feb 2026 23:27:17 -0800 (PST)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com. [74.125.224.50])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc95c4e3sm1145458d50.12.2026.02.10.23.27.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 23:27:17 -0800 (PST)
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64ad46a44easo4317270d50.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 23:27:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXsUiRWJnaJ1AarzyR11rtX+/UjyBA1WnmSFZjkZFmfgrefvtaFVsvqME9iT5ZIKtzA+rDjjaibbh9r@vger.kernel.org
X-Received: by 2002:a05:690e:1482:b0:649:6658:ea91 with SMTP id
 956f58d0204a3-64afe1d117bmr595603d50.0.1770794836703; Tue, 10 Feb 2026
 23:27:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com> <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org> <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
 <b1d791e3-849e-4d76-bda0-816418f98e39@oss.qualcomm.com> <CAEQ9gEkA-Gw=96LJe3vf3S6ada5o-mDqjY9B6NNpSaO8saSfvg@mail.gmail.com>
 <24cfbe35-c611-4d52-8a4c-b437287717f0@oss.qualcomm.com>
In-Reply-To: <24cfbe35-c611-4d52-8a4c-b437287717f0@oss.qualcomm.com>
From: Roger Shimizu <rosh@debian.org>
Date: Tue, 10 Feb 2026 23:27:05 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=p_94p5Rnn===2qMq9MNUePbGaRgJkbkoLXg6X5oywvA@mail.gmail.com>
X-Gm-Features: AZwV_QhU33G1QluEBOzcZbh-AGbKrmtJBKZMO2j9SdGVc4Ffm4zjx-bk6wU0LpY
Message-ID: <CAEQ9gE=p_94p5Rnn===2qMq9MNUePbGaRgJkbkoLXg6X5oywvA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-264643-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A33E0121DD0
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 12:31=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> It may be that your version of pydtschema is wildly out of date.
>
> Nowadays the general expectation for using bleeding-edge python
> tools seems to be for one to grab them via pipx

Thanks for the info!
Sorry I forgot to mention that I spent some time last weekend, and
resolved the issue in Debian [1]. (patch was enclosed in the ticket)
I prefer to use deb pkg, over pip install.

Now I'm using locally built dt-schema deb pkg (updated to latest tag
2025.12), and and run "make dt_binding_check" successfully.

[1] https://bugs.debian.org/1127460

-Roger

