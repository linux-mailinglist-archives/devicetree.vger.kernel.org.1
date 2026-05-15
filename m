Return-Path: <devicetree+bounces-298143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADoZFgz5BmpUpwIAu9opvQ
	(envelope-from <devicetree+bounces-298143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:44:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FCC54D983
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:44:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 25F92301D6A4
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFB55450917;
	Fri, 15 May 2026 10:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YuurZDBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC83450902
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778841683; cv=pass; b=AuW7nNk5jqbjeMjhg2AAu7ffpMtfL8lReXPFCkftsgDkyxlQmc9uZmLGPqR42KtiLgpOu0W2YJw2TSCw7Itn4cqf9nJaQY1xaRmihRXFi6nUHVJIK7NhRTJK/3Y2ez4NE1Zdvl/iet5AnZYMkE6pvlhw9bDv1cYSfeYRdsvsZ3o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778841683; c=relaxed/simple;
	bh=uWjZEP+DdLhFjkOHWhU9mixg+UBZSboIlbqAUS3d1aU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ExlKZ0LpxDogJ4mtMpFtKYhcVDaSUb6SKSatJDciBFpeZV7CVz3dUcPtuNGXgFbWejhtfw/C25mFYVmYsoNj59yF7v/E9E9yKvDi//wUxoLyYUsuBi9a3T3AQVGAFmBUDc1aBfEZMB4Axmvj/w1KMBil4eHjPRYUdanslXEyi/s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YuurZDBr; arc=pass smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2b941cd869cso57965275ad.1
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 03:41:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778841682; cv=none;
        d=google.com; s=arc-20240605;
        b=dT/1Gnj9J2BLMw0aM2qgR1TahuNuMJlI5YEAj4yhNKgvE+qZKR6MBB6w9LaS9zewkZ
         bj3UlrkuyWQvxr9PbTHaiYc9NoMfkYZTqJzFbrxIRlB4tAfre4DFacnSCr25kkMUkLec
         2OM7BAKLOIGNoWVzMyATTU6k++qNwYd5DHEISjqoRGTZozEiTrEusTUraqsO/32esv2t
         5q3DBJv57ZPUd438AYfoQ5air7bUuqBB92R5dYLoz+XkSsBzGyPgRzX90rhQt5zjP1FT
         4UBkwzj3vxihl4JxI8thRMoQ2GJHldArfRHbqqmLH1u0pO0+Wb6wm2cq0UAcgtV7BCty
         j2zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K7Caqr7qda1JX5f2kJScSCqvc8buFLXMwvA7vb/W8s4=;
        fh=CGr0Ds4vevrB8e3+N81CJeIaQLNYscEuED0DxCDsZN8=;
        b=AfcvJD6LdOieosChrYJG9KRVB0su6otdKIRs/uzy7xgh4ztuBmas0Wun6D4uihajC/
         fyOMJedzMiDF8YXP1f3VjXQQsIgTcnJbJOSyeMi37G5EGVbQZcJIOd0DWEmieAosTwka
         jLhncjNuYlo49Pv+IIedtgJ3PxkHnjfSQQeYL5aRqvx5+CEOsU42eOmZOuPz4Z0uznOz
         eapmdaOQ1tGuRRtAc33L1rRQBVF2rIaE5mbXdjbV7Igi+B6RTpKNqdNiGIBMENrDuHCA
         vPU50icRaEdoJZsiO3uOlhrSr2OZbZ+Z+OGzmNL+kZaRnOhPcHWCJAmsQqtKJeAUDFBf
         mlSA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778841682; x=1779446482; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K7Caqr7qda1JX5f2kJScSCqvc8buFLXMwvA7vb/W8s4=;
        b=YuurZDBrTzdTOgVAWPv6LcSHe1/fYliwIUG05x+DUJwh1k/i+HjcDzDWGHTyr7UE+1
         GOFiep89ImUWa30gDO0rI5U6NoR2RyzwUf1xcuxzHcQyqvtmXWG+Cq3pwLBL9gPONOw9
         R3dqc+5e94T81NGYHze2Sla2Cvq8Fp9p13jRx1xt5x3G6af7q9e2vawJbaknpW+BGw7Y
         Ku2evwzs9FKO3A3+V6UKgWs3nBwkIq7cOsyBaAHa13VAz82b7CKyBlX72mtxnZPSPiAn
         Y1gm5h16kNT2UkN1ERKXi0UIj9O8hyGS1G2LE/2lPTG3La+wAJ9CjG9LWstFTRdqdJg0
         Ifxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778841682; x=1779446482;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7Caqr7qda1JX5f2kJScSCqvc8buFLXMwvA7vb/W8s4=;
        b=MQC/vZ0keOVO2lBVhd3wmgC9iXCe0iL88S7Y0LR2a0HqmMGTIaQ/4aihdYyYqBgICr
         KyLxf/wZxGIJfK4CpKMIlv3Z7PCr5ub19w98JZ4grMFUUp9VIYx4uDkEm3bUB/MNYGhm
         FT1m1nymDZ0o4OiKOkDNtNwIRoBSBnnr8vZ3b1ixq9ifILwVGh3nq/puZk2tLAX6aJef
         XT3R18ECHX7qTIvN3pqtk4epeLvqrR2AbmKcDhA/EsXmav4gAIrXLe2rJZ5vGZNIZwz5
         DDUiMlpROaZiYPt7UlbllQ31XjRrXNipEnjh5ZhF5XJ3WckOBg6gLkb8NLgdCkLK3cMI
         0msA==
X-Forwarded-Encrypted: i=1; AFNElJ81H/ml5PNYzIg22uBZ2X1gjAfXd7r+oOEkdXIB+Nr5kmTjR49qysSCgsUImr+wAw5jh8LyejlhThp+@vger.kernel.org
X-Gm-Message-State: AOJu0YzZk/J84wK4YJ5kA6YmU78H75NwbkJOtnZ+FdqQ/eK5wHg4DooH
	vHjrj0bBe/QjsesepBsPwq5NEBPYGSFhVSAmJF0FxERUxuKHvl+1s7MC3doQZ5mMviME81REMXJ
	lH8xyqDCpPqSbivoyYa/SAXCwWyRCOkA=
X-Gm-Gg: Acq92OGzN+bvi++a4mRBg5FJ5nq4icTlB+xhzbQl8JN4VSpG79UE+RjHocZb6UiB0pR
	jk0NHzfnEznWlDSOnKmY3bdVkxBeJt/u4T3pVuXZ23GXwf4W8wpfzKGeYota949vEqqGhXMTJpZ
	5lug2lVGt7SRT61eDqDDdJa6/+23Cv7/9llDvIZ2VrExVzzWQ1l/lCjJGA6NxhR208PZz/kLLzk
	wNFFkj4B1eOpw7KlrXmtAfvitbvbwE+4L6LzVHFeJjUiKWOyackXN0nzE1cJvr2pnG3gtgsjYFO
	qjwSWwQebqmRmNGhWCQcMhEwqum7316nEc5eSnJ1FfHFhLtT
X-Received: by 2002:a17:902:7c0e:b0:2ae:826f:2c50 with SMTP id
 d9443c01a7336-2bd7e8acabcmr25677585ad.12.1778841681720; Fri, 15 May 2026
 03:41:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260510084303.122426-1-phucduc.bui@gmail.com>
 <20260510084303.122426-2-phucduc.bui@gmail.com> <20260515-transparent-calculating-ocelot-bdec04@quoll>
 <CAABR9nG2YFq2kNsXbCe-7XUNJT94rUMBz6hruC97aE6JFSP9CA@mail.gmail.com>
In-Reply-To: <CAABR9nG2YFq2kNsXbCe-7XUNJT94rUMBz6hruC97aE6JFSP9CA@mail.gmail.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Fri, 15 May 2026 17:41:07 +0700
X-Gm-Features: AVHnY4Il_zg65aidyTXrQxejhYWBVSEG4jnBzF0_B6Spst1wAx7CbwetRxJz-nM
Message-ID: <CAABR9nHE7+xJ_nPuaDtE8z5fzUfzSMTAJfDRLOEpudA6Rv_OUw@mail.gmail.com>
Subject: Re: [PATCH v3 01/10] ASoC: dt-bindings: renesas,fsi: add support
 multiple clocks
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kuninori.morimoto.gx@renesas.com, broonie@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, geert+renesas@glider.be, krzk+dt@kernel.org, 
	lgirdwood@gmail.com, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-sound@vger.kernel.org, 
	magnus.damm@gmail.com, perex@perex.cz, robh@kernel.org, tiwai@suse.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: E8FCC54D983
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298143-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,vger.kernel.org,glider.be,gmail.com,perex.cz,suse.com,linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

My apologies for the inaccurate description earlier.

> I see your point. What I intended to describe was the internal divider
> configuration for Port A/B within the FSIDIV block, not separate clock
> representations in CCF.
> I will rephrase this as:
> DIVA/DIVB divider settings used for audio clock generation.

In terms of hardware, FSIDIV is an independent block from the FSI IP.
It is declared in the DTS as a separate clock provider as follows:

+    fsidiva_clk: fsidiva_clk@fe1f8000 {
+        compatible = "renesas,r8a7740-fsidiv-clock";
+        reg = <0xfe1f8000 4>;
+        clocks = <&fsia_clk>;
+        #clock-cells = <0>;
+        clock-output-names = "diva";
+    };
+
+    fsidivb_clk: fsidivb_clk@fe1f8008 {
+        compatible = "renesas,r8a7740-fsidiv-clock";
+        reg = <0xfe1f8008 4>;
+        clocks = <&fsib_clk>;
+        #clock-cells = <0>;
+        clock-output-names = "divb";
+    };

