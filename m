Return-Path: <devicetree+bounces-266262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JYOEu64lGlmHQIAu9opvQ
	(envelope-from <devicetree+bounces-266262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:52:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A6014F60B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C041D3050914
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D61CA37472D;
	Tue, 17 Feb 2026 18:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cPHBkMTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F50E36E472
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771354316; cv=pass; b=rSzGiWvCpNUSzq0EZQ6ImBSZZmeUCKJMKPJpjUib3JEiDs/ZG027IXDKnJ9jch8tIv/viQLdoa7G8GSlJZ/jkjjqH0vYoe/nNxxPRSpo6Ts3+H45wDm+V6aH3C5s9pwnseZthfAT55gtWPUEIC8nHfjBAXsiSgywooN8zySjO/A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771354316; c=relaxed/simple;
	bh=mlaZHFNq5XRxueoqRH3q0IdHdk7o8tvxpfjKaHA7LPs=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=ZqPdnpWeULYlXYrHjIivzxSN4OHv0wfGl+kED6VjKvMyPC+iB1bHm70bGg6llwm3cg8WFyQ2kKN4O9LlVvZf/OUARFsQMrbn4SYM4T8w7NXsHIxGS87wmHeFWTTizldLymo7mP0Vfpud3/WlxwGzs4ep2WvW3HsH+O5J9wHah/U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cPHBkMTS; arc=pass smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b86ce04c5cso233385eec.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:51:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771354314; cv=none;
        d=google.com; s=arc-20240605;
        b=BRTl7HVasIzyk14nfZ9ke8lGM7xpr9bRqb9ceoAyOKo8yp6dM5nTPnm0zi/qOJb595
         k2UlU5FwSck9gOqGQaoxoSYcgSZ+BJ6NiJ0OlFGYR0Qfv7Fl/8QzsYbN2Pdns6RXRd4q
         RMmtabt7IqkloDal3vm5Y6KJoyJZ9mbCi8KtlqtABRpc8HBitEHf32/HDUZqjoLHX36c
         RLS1Dd8tx89Edl5SXNoi/xdvXDhBPn/UTF0oK2V5tDodbz+7mc7lZ8o7sLYDmZavNfNL
         NwHFUBFd40tqRCGkpeIibLHbhuUUkvx6/gD6iQZ1aBHpSvjjkf8E0194t/gRhTgcn3SI
         cKMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=J/Dwq29TVM3lC7MbucjOF4EsI3jXCUOI1BLL/5lhNGs=;
        fh=NlnBsvVjfjITGqXmc12yN7nedlUFu1jZYAr4PF1tkG8=;
        b=AcxiBYLesR/kIa52hlis4sWc99DR/kV6v+2cgjqwCCqg+QU2hjAZh+1wAdnJjyw8bv
         jgSX1HoNe1cpHcSbILc0Psa12oxEAWzxbXlIlkrI2WpUcJLjBR+7RSWAw1tb0Ef0fzk5
         /4z4Io2HFUmTWywHRyTg/WUhFwlRYZOQUooiQBdTBeU1UIIE7AMdWw0ZuATDiDGfLbl6
         0NV5fqQeAhFPgIbnxbxAArpJ+0jZ8jSB7IpEMfyFjiIIwXdl13oDxegx5ln7L1JmwjZh
         wxtts6vzAi6m5dnSCvcEm9ekwdkfaiwT/w2KUW9yQT89GZiKY4WwmzMhLsd/RdhiJCNN
         9adQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771354314; x=1771959114; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J/Dwq29TVM3lC7MbucjOF4EsI3jXCUOI1BLL/5lhNGs=;
        b=cPHBkMTSjsQBrLDzh0g8vj7f7bTw03oaXK9dbK4ieBzV5uV+wxGL935i4qZM2/biBM
         QE/Bha4ZjDL/9dUWLpQuPHfI8s3B/peCXQs2sDucRTrCV7+mAgqFgNpf1mp/+CUigEgf
         UxUmiEqc1OykzT5BvYjfQU4Lj3a2+DVZ9KNQXWVDV04oRxtY4l14BdpbfS5fGHcr1zMp
         sDwM2/o7ZYD7ioUiuURlKrQjqR9PaE/cif45Lm8juHfROp9KH+FeCBqpp9CNcLck1BEH
         O3ss3JLl20ZOzvb/o1E116JC8zQGr6T+nVrCn0IdtxigqnVqsLW+30+c3YsKVjTWTC6c
         kNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771354314; x=1771959114;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J/Dwq29TVM3lC7MbucjOF4EsI3jXCUOI1BLL/5lhNGs=;
        b=A1Hp7K7uWJKQNF4Z073EDJ/4iqSv1IHmibiH5tZIOM2QevfbedNd+6w0D+m+veAL9S
         DAbKLznnzKYtDFe+u5oYrQctGoXaTveGHsYGRCTM3cXUpSqdlRdqllEO9J+SiGWF0SxN
         TNTH+pYHXJKSwLj/6YOXkq5nLHhbfV02fO0c0b5UsWhdPJEGc71aOPs2pXFLori4OOeP
         rhKhbr1KRDRT9nqry6Op+NQJHxRgYZ2MmNfGGx+Qswxe1qNGIRLC1ZbsOaahClimijp4
         uIO6UHnQTIkuzg+J83bk5LRWvRxWkMQylgC7EMfZFjhk6EA5LHkAZGQJ6rGyTbMg1USD
         onzw==
X-Forwarded-Encrypted: i=1; AJvYcCVLmyouRQksVC3Kn+chTmR3J6gExzwxdqgxFwmDcAGPoMQXWzBOC5DHT1GWTl4Cc5LhL4xq55befpzZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyWtw2+zRXfKcJYVifdn1VScw4qyvMGMy5mgwbIhd59100c3UMB
	xOSJss3J3euSrBiCUY4jRFCbq/pCGxrzUE+ti6Q3CrOKqQAPKFz3QOk0D/VZd92GmP16cINNt6W
	mBjdkYUyEBmBTTrMm5Njeim3Lz5KgEH4=
X-Gm-Gg: AZuq6aLNEKalFHom+iSPzQ0U72bICK4iCmzyQ+0JxfdCCEUxNYm9O7p8E5bbpWyxP0/
	RLE3bUi2U/vPrctDbjMXUFXqh96PaPtiSOgtyTXZNJFgzrxWDr7lfTa7wcv3TCdtirAOFi2V6tH
	oNWfhNZasD7DB0BDxhu75AlH7ELSwj3N90YwupcP7x+u41Ij4wk7eO+8GmLq6MCzB8Z9fkH/zlQ
	Ev3L+JD1cCutG9kOZ7FR+jx37G9eTQCSF2s9V/zCZGAvJEMgHv6UfSr4xHULdkWKNy32ItsPO9K
	dDnXF6lT
X-Received: by 2002:a05:7300:b90b:b0:2b8:1d16:9736 with SMTP id
 5a478bee46e88-2babc44ed98mr5624900eec.23.1771354313687; Tue, 17 Feb 2026
 10:51:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Tue, 17 Feb 2026 20:51:42 +0200
X-Gm-Features: AaiRm51oN_WMS2IyaAAXhBJ1VmnFKjk3HIr2OX6Yqqq7pT9MsuQDZGKYwbAC5Us
Message-ID: <CAHuF_ZqWTb5Z7J10WQaBR2adVi1rU-ZFFTCBkHh6nNtuuCdJDQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: clock: qcom,dispcc-sm6125: Define MDSS resets
To: val@packett.cool
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzk+dt@kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	marijn.suijten@somainline.org, martin.botka@somainline.org, 
	mturquette@baylibre.com, phone-devel@vger.kernel.org, robh@kernel.org, 
	sboyd@kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-266262-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,packett.cool:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B8A6014F60B
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 08:25:20PM -0300, Val Packett wrote:
> Add the missing defines for MDSS resets.
> While here, align comment style with other SoCs.
>
> Fixes: 8397c9c0c26b ("dt-bindings: clock: add QCOM SM6125 display clock bindings")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  include/dt-bindings/clock/qcom,dispcc-sm6125.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Tested-By: Yedaya Katsman <yedaya.ka@gmail.com>

Regards, Yedaya

