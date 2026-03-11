Return-Path: <devicetree+bounces-274017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF1GB7pGsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:40:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF084262666
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E991E30B1299
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977983CFF77;
	Wed, 11 Mar 2026 10:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J8E+qNcz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630763CF672
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225528; cv=none; b=KyVdjq4BXbRE3lNDxm1EmW4DW1oXhtlknVkp8bnjx8I4oUepKik+zBUysncswNgTmjE4fux0tPiUNLjPrn99v18/2h4Jq43BZxUWK/NqGDpiHrGlp25+h/+XrUZKmzX1KkUw9xdpZVFZU9jyANbpgMJs9FE1IMD/jApicOHPhg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225528; c=relaxed/simple;
	bh=i7nUMXQbtZArZGnsatx9qQeykbtPVUo/SqQprsinRno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tuMYgWekzNE6esVGzjbyDe2AI1hKzwvLqsl6aVdzS/PUqDNuwOB3nlrR3wfmLqKTHrFEg3yRrQ/RnqC1Lp72WyiDHi5biBsPnyhg4oHYHTStL1Nk+lCsCAwSCTdjuPEKzZGLHI02BGaGixBrUJ+r29Hos+qXi2UpVoIXWYv9dlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J8E+qNcz; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-829865a8471so6536452b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773225527; x=1773830327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=trxODt72+ZLmM73SSgKB2PrCW34S11oS3WsSFeUrg74=;
        b=J8E+qNczqifmPq/ZFjhO3BYc1oRJN/PB3QhnQEsTSjTWa59nnf3Gyc27YH2UpdA3cd
         Mv0+LI//wgiqAEOLdjLa5V8ncUgKiweo5oQWMHFkaMhfCD3Nsl7g6a419u6bN1U8rJsR
         hnjnmd+m8tabfPNvYR2qj3f4ge2CFBKKieX70VZq/tBZWxLSs+eGNUKCVOs5HPZ7vB1w
         ygmKehbSGLP0jLLRlnUw6AzOpq81DpVAyOLZpC7Yz4xuo01+WNYvZ85bTIqnrIRnE3kb
         Wdk9JbIWB41dUzfA0SkorSZPljMyUwAjyYLxSHt45uIoIMQArNAI3NGVcrlHsqbVggsQ
         HbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773225527; x=1773830327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=trxODt72+ZLmM73SSgKB2PrCW34S11oS3WsSFeUrg74=;
        b=Kn1W68bMbFG5slhaSNMaKhutnmLf2z7/Bqs1LZyYlcxuVEmo9Pyf12B//uDQIPr31R
         pmlajgptF0dKaW8KCzOBxBj9KEXpZv5x4RQ7GzwD+kX5J0GyzvoiLeU61AYE9hnYaU8H
         6AJTb2CzHzwezLo8/guL6GD40ybRazTNViAW0wyMI+oRKzoMPscSVjfrB4QVe5SwvqTf
         caV/cgxkcmIFRPQ7hySARGfiEUtOYOyjfx1QmFbPBNIEyDsdQVe789m0kbgMCcFTBFus
         Cf0OWV64xO/Fvyv0vLaxlG8l4dYg1ByohkdM+97vCjvBSJj0lopjdzjzV2ZvycvXjR9N
         Cxbg==
X-Forwarded-Encrypted: i=1; AJvYcCWl3srS4eW1RADO1sy5VqTA2YDiV8NH5C6c1lvzQXqG4Yq5v3dodJipO3/znIQDJZCCau9N6tmpUjB8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx7JGqgLXjB+u0Q413XmZDsLwvLEvT8MO1hKX+DxvEVtYx9S7r
	yjXP00TkYbxAy8oucLvdIDRBWk0UoBokusuu5/7k7k61O4/ZJgLJrViv
X-Gm-Gg: ATEYQzyRM9TXDjcGmPxNqHB7nR3CadV8pwsXGg6RpO+FfmLk+nDJP0Es2Bk9KKBXaYg
	T7/tnxYIg4iheVIlhRkS0yS/92sDoLoARWeChlyhMuUvbfIdQGmzPL3eVkWrtmn8IycLssqGz5+
	kbOsOcH2nNv6RINc+oAS2AS3P7FfCE0hfp0Zxe73dz8uWef3DLzyRn/E4cC+aOHX0myMAZT95WE
	Riq93EvsrT8UA5tWa3pZS1U3k/Yie2H5+d6fmr6r7alb4CdiEqTgGouco974OK7Cv6s05kzwozp
	+HNFbKsruWq24kuGJOOmhgkhOC25C+fF363J7WvDyWCYNThBB6Vcgblr3I60YhROa7NdBLHyELG
	YQyzHGNoqZ8hN+T2PxJccqhODShhzqps0Qq3odTrTNAz6l/wjbYChQuZwUbR6vphzTA3sdwt3fU
	fR9SjlBhTOebKygIKMLffAb2Gm0m3sL5mUIoQaYiS0EZ+ol0lwvTP0arYSpPl3tH83yOP2uo3RS
	aMDUQ==
X-Received: by 2002:a05:6a00:189d:b0:81f:38f4:d774 with SMTP id d2e1a72fcca58-829f6ee156dmr2271399b3a.27.1773225526679;
        Wed, 11 Mar 2026 03:38:46 -0700 (PDT)
Received: from localhost.localdomain ([14.160.25.72])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6f1e374sm1785635b3a.44.2026.03.11.03.38.42
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 11 Mar 2026 03:38:46 -0700 (PDT)
From: phucduc.bui@gmail.com
To: wsa+renesas@sang-engineering.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	geert+renesas@glider.be,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org
Subject: Re: [PATCH v4 0/2] Input: st1232 - add system wakeup support
Date: Wed, 11 Mar 2026 17:38:38 +0700
Message-Id: <20260311103838.5541-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <abCkulmW8XDXkXiT@shikoro>
References: <abCkulmW8XDXkXiT@shikoro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: CF084262666
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,glider.be,wolfvision.net,labundy.com,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-274017-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[youtu.be:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi,

> > Demo video showing wakeup from suspend:
> > https://youtu.be/POJhbguiA7A
> 
> Nice video! You really put some effort here, kudos.
> 
> Really awesome seeing Linux 7 on this old platform :)
> 
> Happy hacking,

Thanks for the kind words and encouragement.
I'll keep learning from the feedback here and 
continue hacking on it.

Best regards,
Phuc

