Return-Path: <devicetree+bounces-273744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJJ5A/9/sGmwjwIAu9opvQ
	(envelope-from <devicetree+bounces-273744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:33:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC8D257E50
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B5F430E6153
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A07366824;
	Tue, 10 Mar 2026 20:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hbQaL4EJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1703A358392
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773174683; cv=pass; b=P3+0XgCdKuA2J4c6SsRwQPhKwTzh1aehyMa34qP11c2z8RM+wXw9DuIP21hQ88shC5fkFfsmHUOzMRrVtXXvBFr7UK9FzmRZtNweUbKKErb1Q+p3XNiv9bvyDfYUm0VxmDgzjo3K6cRndA6UuS/nnCGnmzIjSXuxXBTO7TdAnyU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773174683; c=relaxed/simple;
	bh=rGwT+iwlPcz7fLrpp4wRsrxUUp+hs3Nud9RouFTF1L8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k4+de3E/2CJxOB0YFRKQvFcpLAgliV8jgj+IP8CC/p0lS0N5wt1p31P0GD3OKXCHhK5WfP5wQJklf1R/pxsTbAQ/Upa1kZinQ5TrZ3RYdJUi5jdt4bvGD9vumMUUxhFuk9sgPd0wPMTzOaXv7Z52bHRSWyX7ZRaBGcOxfrjhFdo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hbQaL4EJ; arc=pass smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5a12cc20e71so5802534e87.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773174680; cv=none;
        d=google.com; s=arc-20240605;
        b=bdgPQxw1KsvgHWXdBaglRLtS84mLX+NhwMPMFdH7UrjhvjGTXV/FTlVYdQmHJxIJjR
         j6eY+JWwZQdm5nhMUCVW1DwMFKqpv/76/G5BhiNdBZXlO73iuwCn1mBDzfI+5WcIzrM+
         1duVQw0Z8Kq85vRBNzXopzT3aZGF9hFvTrJzv5+uc+QrPBj1uFPK//e+U7BFSlGthRMc
         yNbpqBPBb+oKBO2XzkTZ6CW2/LT/96Kmj+3ejcRR6eM3THBFlgSXCrOr9u8I3Kj4XlHW
         vt6jrkftncINxv9ZmBEZVX35OTLvI/FOOHprjWhBrPB4mVj7pQU9jHYndZmgNeSFP0Mp
         C0Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Q0TVLG9JTMKpn6Vqwj6rN9mE85YOz6NbxAoBKHU5OcU=;
        fh=vvHlLdyJQ2gi7K7G4WpGsie0sK0T61IGPELlZIq/ZR4=;
        b=k+45JWBnNk8xF1R97eOgVaeHo8vHg5VCwarsFZGJYJV3YH6kNDHQEyvm9b4RFLhzUE
         Xe/JQDG4Cv6V+KXzaqMWNXKE+l8tDQh39Hxq4PFM5lSXcwJcL4eQd9CB0fZzvOcYEpii
         V3wXLYZCJoiUhLj4haIDWOgVVdQCYYLT2tnSnAT/J/Av+BEFWmZw+TjAlcQLb39/Tsrv
         FH7L+B1MfV7GZA5m5VE5RtxtEUZ1cQhitoVr5OJ584nPajbqjnyjUY0Zu1GVMaA/oX+9
         2xf4wJ7GnCpyhEV1gBRdSf00PjellfyU9g1yQcwB7qjiNVUabR5ETICbsYXvqjnCfeFS
         kByw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773174680; x=1773779480; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q0TVLG9JTMKpn6Vqwj6rN9mE85YOz6NbxAoBKHU5OcU=;
        b=hbQaL4EJmJEIzSOvXXfcgm8MHqHCmkDSTVzuIfxj9iLC9GpcGQfsC4Qj7GP4vpmq7K
         Sn3hVFvX/RpnEnbk651jb8+LFiNifA4TUvPWVO6neSdHkgKYrOXVIOdSQECu8eDor4FB
         0XlS5u9tJkMqSL/B//A5PncRJfO55EShb1z0JiPCM63Wup2JoRmkrgTrFJyN6vGnsbGw
         7vKMNqJTHc0K9HwOMlq6XsP9UjFITevfLpN8337lDIOGiJpp2PqxjsEXjWP4NxnWoTAN
         U+SHZAB6SGyRHk5/05sDbM+gkv5p91zktSn7UG8S4uVfdF2i3Nlt3Fw7gfIeOBZycHXz
         IN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773174680; x=1773779480;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q0TVLG9JTMKpn6Vqwj6rN9mE85YOz6NbxAoBKHU5OcU=;
        b=KwNUK7oVU3rDaLkDqv4XfzLdC/b/r6kwO2egveoOc07Pex8qLb9/Un1IHZVj+2xX8i
         GwsTWgqanr5wCz6aYNki/F3vG+jSoHrXO0cBH8NKL6SrJFaAuRtHOjLMXXAkojI8s1xg
         BZJOYRg/z4HEqN8mAAB2iE/r6yehsAcKRXtb+lhOrIUcYw5xvJWnFUnxAQ4W1bUBI2Yu
         etG5mxKWpZoTYR6qpTuLwDjTqmuXrTZ0xTI2ztEyRZmLdbL+QC1VWxr3APiB3JJvN+3a
         jWMGb7e6b70e553omjnU0lXNWFM4EugvB665WH6VDpIDo7WaZF8Vk0SKk+58ZiSN7Vhb
         R+Zg==
X-Forwarded-Encrypted: i=1; AJvYcCU5FaxXkb3lI6qyP8epH4T7o2a3X2mD2VQ8av9oDnB9IAnPZC5YFk1q1LBInyELunXIXSEwEm1sYRRn@vger.kernel.org
X-Gm-Message-State: AOJu0YyzEld8O9WNMjcb5uWicqr26d3PmBLGoPWLJHs4MDE7q8HyVAuj
	v6mD5kDU3aEyTQYH4DHvuCPjWW++xAke/kc7DtynOIO0+TyR1vbs51PZ5/VloypbN8vEscg0ojc
	QZZGV9vKNV3R3M2q9tjAer9yNo5fQLgA=
X-Gm-Gg: ATEYQzx7IFH/r/Ntmqc3qLQJrwPo1vLmMfmZzApkaurhet+oNFmJt+RU4gqZqYzidvu
	jsi4pbCINdyfUYCxA1GtjjApHSFtxCxN5uSBwbU+WcBU+3LF/Gvk8RSMo9bXR4TpEdK9Ky9eXUq
	o43icjcx1dMvB10cHzoWF4DN0H6/o8Q/iumKeI6GdzQw5aO1MKOw5R5VMcIrkSkpigdzLxE6iHI
	hH5BHng58YNItDAymHaXU1CYTjRKwo9M4ksBXWprUK0rRFlDOH9Mo12hm0VCa7pB662MaL2nU8/
	o6JZzjp+EwTJpRD8Av2gIkkuxOejKkKpxb011hLG8zZUZz0gZzhpm2Js3ebFgB79Bf3w
X-Received: by 2002:a05:6512:2204:b0:5a1:1d47:76e1 with SMTP id
 2adb3069b0e04-5a13caae710mr5357598e87.3.1773174680103; Tue, 10 Mar 2026
 13:31:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260219-sm8550-ddr-bw-scaling-v3-0-75c19152e921@gmail.com>
 <CALHNRZ9R1XaYWeTneZmyAvGY-s2-rbSC_=bSV-nC8_zU+bGLqA@mail.gmail.com> <97134126-f1a0-43f4-a4f6-0c1bd85e0c92@oss.qualcomm.com>
In-Reply-To: <97134126-f1a0-43f4-a4f6-0c1bd85e0c92@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 10 Mar 2026 15:31:08 -0500
X-Gm-Features: AaiRm50Hf3iPK6NugLvQSXXwLyR31efJNTkfa9DQKJe8sbkpY8MxEetmFEFA02o
Message-ID: <CALHNRZ8vEcq75O_M2A4F6p_Y000SvVgu4pAW5OLtX0ucAGAqFg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] arm64: qcom: sm8550: add DDR, LLCC & L3 CPU
 bandwidth scaling
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Georgi Djakov <djakov@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: AAC8D257E50
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273744-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 3:20=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> On 10/03/2026 21:05, Aaron Kling wrote:
> >> ---
> >> Aaron Kling (2):
> >>       dt-bindings: interconnect: OSM L3: Document sm8550 OSM L3 compat=
ible
> >>       arm64: dts: qcom: sm8550: add cpu OPP table with DDR, LLCC & L3 =
bandwidths
> >>
> >>  .../bindings/interconnect/qcom,osm-l3.yaml         |   1 +
> >>  arch/arm64/boot/dts/qcom/sm8550.dtsi               | 367 ++++++++++++=
+++++++++
> >>  2 files changed, 368 insertions(+)
> >> ---
> >> base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
> >> change-id: 20260207-sm8550-ddr-bw-scaling-b1524827f207
> >>
> >> Best regards,
> >> --
> >> Aaron Kling <webgeek1234@gmail.com>
> >
> > What is the normal merge sequence and window for linux-arm-msm? I see
> > several things that have been picked up for -next recently, but none
> > of my sm8550 patches that have been reviewed / approved have been
> > picked up yet.
>
>
> This one is probably waiting on interconnect, no? Not saying that
> merging here is easy, quite the opposite - it's frustrating, but you can
> help by responding with actual data, e.g. bindings were merged and DTS
> can go, instead of just content-less ping.

So patch 1, the bindings, has to go via a different tree; then patch 2
goes via linux-arm-msm? Or does the first patch need an ack from other
people? I was assuming both of these could be handled by the
linux-arm-msm maintainers.

Part of this was a reminder, yes, but the question is still honest. I
don't know what the expected merge window is here, knowing that is
good to know if something got lost in the mix. I've got a couple other
patches as well that are standalone dt changes with no other deps.
I've had patches to other subsystems that have sat for four or five
cycles just waiting on the subsystem maintainers.

Aaron

