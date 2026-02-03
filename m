Return-Path: <devicetree+bounces-262267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEVxO3X5gWk7NQMAu9opvQ
	(envelope-from <devicetree+bounces-262267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48532D9EB7
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6438B30BD78F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD3339E162;
	Tue,  3 Feb 2026 13:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M3knS8Ns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9035639E180
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770125575; cv=pass; b=o0ynzN9n+1xaGZLoFu5vO97C5kKBBs5pi5cis1+qRVo2un3YaK6G1GASa41OAwOXmU+dKd1dq+nb8mw1isPRIN+/4uL1QzgC6mZwAwMEVW4LZEUoffujsKpZJ95o+YIIFQeCgt7TUTTfgPHdMGiE5DkJRcaPitSSDtxcTJcmC8Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770125575; c=relaxed/simple;
	bh=ebaYgffeHYn7gzwVrIV2yDgbyv8PU9o4IV7Dp2Fxs/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KZozqYLy8OjBBAFydoAn1yDqynZewHvzVtB+j2zaXWOWBqKt0Xwq5fIahioz4BGyG1MSoBna3rNAY5godTm2GkBfTrIALeSikQ5+tyVZcgwE0ifhau49AqcIUZJk29qWH5Wu/OLYGoC/OnuebeyJL7CmwqJAqxMrVuDY8AV0dkk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M3knS8Ns; arc=pass smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5663724e4daso3852072e0c.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:32:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770125573; cv=none;
        d=google.com; s=arc-20240605;
        b=TzDIntSsr5Cx4vqnzyhV9bKtdVOVjmdBLKEBkYp7nxvRuU4nfOdm81ocBIMVLP9hu8
         uZW4PFTRzkaSBMV2vXWxtaIBAjWHr+flF2Wc5NMUKn51tTm7VtxG4sje/vxwtOLF3b4S
         W30d57J4udaDE2DurF6Us1B2UsO9xPAwUw66jatpgiCSUZg1UHikH3p+ah0rIEcuFUlP
         Vw4P35B3WZ/HtI3zpmt16AspScvkRS5P6KqY+WldQnnDKbBbY3+YDTVR+PNAfr6NeSPL
         Nt0N6kxmpzLYYeAc0PVBubw6AWgHh5zp/h23QygNNLmcE1BkmcJVzUg+qBrkLB+ALjX9
         MBEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/hci2sdsPCD9iRXbhf00hUDFJW8K56ypEr3d1bbtrDk=;
        fh=kdqWr+lcsyZoW9Zv+YbFanVR1YNd0R0VyPoHE+GI6/c=;
        b=YeyurMIQqcpT5uW7QAi1mwB9QQbrSA1mehl0PQx37Xrp6qvH5jFLbFPrGiF5f/VQ8h
         vIEsfNWw23fRWG9OU+TRv74XA4ufVAt459EddZBIYByd+jfi8HoHYe+pOXgGOkO8pEZ9
         KSWRHjiz8xISmcKIUaYqLnZviQct1hWvAv/Oia2yRVUePqpnQ44AqYC8Sty29B+CljLB
         qsSZC7UtnimtHcEvHPg2B8Z86jUE7w4IULXCM+eGGn6/ZNVXby/UXHQq1kxll3ezqTUC
         shp3E749tdDVk6t0yrapS2zVtSIGOj2gSHOLL3jrPOVPKGqrfWU/NZE2tfOjmKdsGCP2
         p3lg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770125573; x=1770730373; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hci2sdsPCD9iRXbhf00hUDFJW8K56ypEr3d1bbtrDk=;
        b=M3knS8NsI/v17z9OAiuKNbVaiixtCZt3khe3aJzWSNkSbjhu609bxydnzKp5YOLNa8
         k0RoRwqMOJO7gJImsItzP/FMkHQudrIYTEjcJrw3i9CAXIb8ZQldzp2jz5w2PgiNTSWO
         ABxDZGaqikda09WJ8DU4YpCxBtY5Ie6Qeg6S5DGieVlZRud7XBmhUjlSgt3xJpLvDH3H
         94qYQmuCbe+VDJWkxYVypUTWmutgIZ8+aftu+ZhqDeaiqJGvQL1/pugr4nTMso5ItFNo
         Xc/4uzh3UUPK1Dh1g1xpb3mEL9PY4On6L9uVifKq4YUgs4+kf+w7dX4Yamez8q6aSsA8
         DdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770125573; x=1770730373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/hci2sdsPCD9iRXbhf00hUDFJW8K56ypEr3d1bbtrDk=;
        b=Fhjd/HDIkF/SspIrgay/fHVWSA2wcLBxcbE5qeL6FdGI90VHkHbFR3TlpZupQo/qx1
         S1g9tN7mLeW9/MZucH0ydQS6kPbyeEK+qGq1jDAlLHpoJCsbK79rUO5qgQwb9PT31Frr
         zSB+eBnfTN1Nl2GWrkAGquZ3FzSG94cbezGuguyL/hLGRSHIfI9jiLD2LrscLq3iekKJ
         SWWFcuVrUGfwwqRqf2L9ZMentYlbaKjRQkRRrQknmsrD0gmC5z5Oj7fZ9pG5WefsLNkg
         i6PhlQAT+gnpz5bpuMgQgoPO8yGEdlnb0VHigEMQ+fK+lMsSC8nPK2xYnxCAb3RJksO2
         0fKQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8JB9Sg8M35tvmcpC7QEJM0u0vwJlfTGdAjUUk1NaAWHeM2Zi9eKIMmKi+a/ShzaNlARpj1ardNijg@vger.kernel.org
X-Gm-Message-State: AOJu0Yws2woWVAFEGorVYyRmdtC6IBD4nMdQ0PeFM4f2/IxzmEG0kC1S
	IOwPXu2nELDBN5b3xuorhJcj/67Z5/J74utNbPFaV6Cqlf0TSMboGhsZxy4t3rCz1lTnvOYkggO
	3rS+6ePQ4kYMJ/kD9mvIrZd7A0QVLHG1ci7mV
X-Gm-Gg: AZuq6aJpnizAhZ0eNegQoodrHh516SicSPJ1Y4Rpk02hjs/T7kj4F17waUzib7n5s0+
	2v4L0TuM/uDu5UL89kOy52HvKfk89kRPBIVHb1NW60bx7DJCzFbXhVz8Kf14MmzR7dcdpqZA2G8
	DUO9jiTgN5nXSVGadLytGkm08/VxchZIyrcnwGi+ql+cGKpKofrBuQzTjd8dOfu7Yt2aB8k4bOM
	gKEyXwl+02LGdlmqwo2/aOKo5j+z0m4LgeCCvJ/3PDPZ+PwpVKMKpi9QwCa4jEQYCho4kL/cT9S
	Q1a4L+4lH2nIR2VwhsbQH92ZOBgMSoAmok58TNvVle+UnnEde/PmZ25LYi3lsItMZLenku0Y0LQ
	Z4BJ5JaCDaA==
X-Received: by 2002:a05:7022:6b99:b0:11f:3483:bbb0 with SMTP id
 a92af1059eb24-125c0f984d6mr7727526c88.19.1770125093214; Tue, 03 Feb 2026
 05:24:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202205758.3044617-1-Frank.Li@nxp.com>
In-Reply-To: <20260202205758.3044617-1-Frank.Li@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Feb 2026 15:27:39 +0200
X-Gm-Features: AZwV_Qj2z7qbutwvB-NPA1F-KcZIWGH03UnT5CBo6gdKULcm6QEzcKu28K1kX_8
Message-ID: <CAEnQRZCrCEa9TixELqZGngXL=TrWO1i=m7dqgLtcx_pN+wEaWg@mail.gmail.com>
Subject: Re: [PATCH 1/1] ASoC: dt-bindings: ti,tlv320aic3x: Add compatible
 string ti,tlv320aic23
To: Frank Li <Frank.Li@nxp.com>
Cc: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jai Luthra <jai.luthra@linux.dev>, 
	"open list:TEXAS INSTRUMENTS AUDIO (ASoC/HDA) DRIVERS" <linux-sound@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262267-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[ti.com,gmail.com,kernel.org,linux.dev,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1a:email,43f80000:email,nxp.com:email,mail.gmail.com:mid,43f00000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 48532D9EB7
X-Rspamd-Action: no action

On Mon, Feb 2, 2026 at 10:59=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add compatible string ti,tlv320aic23 to fix below CHECK_DTB warning:
> arch/arm/boot/dts/nxp/imx/imx35-eukrea-mbimxsd35-baseboard.dtb:
>     /soc/bus@43f00000/i2c@43f80000/codec@1a: failed to match any schema w=
ith compatible: ['ti,tlv320aic23']
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

For the next patches I wouldn't focus on explaining that the patch "fixes
a warning" but instead on adding an undocumented compatible string.

The CHECK_DTB is just a tool that reports the issue which you can
mention at the end.

