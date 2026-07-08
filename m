Return-Path: <devicetree+bounces-322771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /6U9FuQ5TmpkJQIAu9opvQ
	(envelope-from <devicetree+bounces-322771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:52:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE63B72608F
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:52:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cecq+hQF;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322771-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322771-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1869305D857
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 11:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11395434E36;
	Wed,  8 Jul 2026 11:47:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A708432BDB
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:47:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783511279; cv=none; b=aPSG9N5HtJ2FRfAjLhOejJoaJUgW9LrfwKHZ4G7EwdED2Igk6RGfaOftEAyEVyrmXnrDSUpdqG7ikZAh34xHlSqrgkPZFsQk3QjUr8xg/4fuu6J1RrvxxSUlcr9iBcWMw75vmC2Gn8meY/XVKpu+Z895nqPdTvM6K2lyzV+lOaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783511279; c=relaxed/simple;
	bh=YgWdbsJ8UAjrSAc8lxvhYVlBDW1BX0UBIoE3vQlrz0I=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HdzWoktWXjJgWOny7d1vfkYOvefHCk/GlA5l7dapTh4dx2GIM2PNIXyv1EhiJMzLPFJyOzPJwheJ+VSbdB9lFYOey3I6DzNpAJEI5ZWomiMwML7HcZTs7btL5AMQ4ovlh1u5FwZcu/Jqg6mD0D178lEPFZr4kHi0CF9Iyve4YFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cecq+hQF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF971F0155B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783511277;
	bh=Is/wl9YqGLEOs03hX4R7RoncNjfkI3qNnoxCKS4Se4s=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=cecq+hQFxMrWt7ebJsexLm3Vzm73NiNjjbaqCiTtxFpKDymd5YU9hUS81TdwlAACD
	 5Fn7eN/AhE9DyxNihzwkAymgszg0+UEY5Q/+7wIhPhEFCm4FNMV1EarLsXnaMiYyX+
	 opJ79E0Aq0slRlSxXu7zt6aJuleq6MWpMdhdNsyHMWaMydXDZaLgGMSefHOzorgMW+
	 y03i7BYlADWLmXxZg+KKqRcOQ/SbyVKyGdyClMs4aLjLVFeXdUaHM0xYvUcGQ86yam
	 HXiRML+IN0b4/3H6Mi89xzu2dll6oHp0oEQFWyxHQQve7RDxyQ1U+enUudodzQcOUj
	 jSlt0NaSDsAtw==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-39b1eb7bde5so4992091fa.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 04:47:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqsZOvk6ANL23jLKp5Rz+sPvVpGNAFfvF2ugEmiX87kV84ILAw15lb7X7HO0D0+PIaRRhEzQbC4ELix@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf62S1byw7a5pceQJuxioXxfbz35KD24sm79ba6dTDN99hnm5i
	TiJlWQgEWhKuUt04Tjg1GWA9RmhJcW3Jaf/w2FUwC2U56xicvwxEcy+4gHNispv1QS4pqXQ9yat
	PnvdOBNIc8EyLXmB/Tei6hb+0x5RglHxzXFoe9yjeYg==
X-Received: by 2002:a2e:a5c9:0:b0:39b:a75:e8da with SMTP id
 38308e7fff4ca-39c79852412mr4803661fa.3.1783511275626; Wed, 08 Jul 2026
 04:47:55 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jul 2026 04:47:54 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jul 2026 04:47:54 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <87qzlesfo7.ffs@fw13>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260707-hamoa_pdc_v3-v4-0-dfd1f4a3ae89@oss.qualcomm.com> <87qzlesfo7.ffs@fw13>
Date: Wed, 8 Jul 2026 04:47:54 -0700
X-Gmail-Original-Message-ID: <CAMRc=MeU0QuRozMscv02M59+a66S05Jm18CyvNE-qSYrY=S7hQ@mail.gmail.com>
X-Gm-Features: AVVi8Ccza8OJ5sr4vN3ioNWBzssDpnygJvxLLZvBUYfXYOw5sGKh-zx4pCfo0KU
Message-ID: <CAMRc=MeU0QuRozMscv02M59+a66S05Jm18CyvNE-qSYrY=S7hQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x1e80100: Enable PDC wake GPIOs and deepest idle state
To: Thomas Gleixner <tglx@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Sneh Mankad <sneh.mankad@oss.qualcomm.com>, Maulik Shah <maulik.shah@oss.qualcomm.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Stephan Gerhold <stephan.gerhold@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tglx@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:sneh.mankad@oss.qualcomm.com,m:maulik.shah@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:stephan.gerhold@linaro.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-322771-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE63B72608F

On Tue, 7 Jul 2026 22:33:44 +0200, Thomas Gleixner <tglx@kernel.org> said:
> On Tue, Jul 07 2026 at 14:51, Maulik Shah wrote:
>> The series has been tested on x1e80100 CRD with both old and new firmware
>> and also on kaanapali. Test conducted with tlmm-test module after
>> applying [3] as test module needed to be fixed first.
>>
>> All 17/17 passes in pass through mode and 16/17 passes in secondary mode.
>> Failing test tlmm_test_rising_while_disabled seems to be because when in
>> irq disabled state PDC is not latching the edge interrupt.
>
> I've merged the first four patches and tagged them as promised for
> consumption by the GPIO tree:
>
>    git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git irq-chip-qcom-pdc-for-gpio-07-07-26
>
> Thanks,
>
>         tglx
>
>

Pulled, thanks!

Bartosz

