Return-Path: <devicetree+bounces-271565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOjJKcd9qWkg8gAAu9opvQ
	(envelope-from <devicetree+bounces-271565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:57:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7F4212350
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AEAC630090A6
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 12:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFB239E6C7;
	Thu,  5 Mar 2026 12:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WutLMnNe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435EA3A0B00
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 12:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772715461; cv=pass; b=MmQW+lYiHOsy07uegbhWIcHExLwyeaEkijZXiXcn+/GTXLxJ6R0C2P6b5TEA3k/JPIarFXoE7F2pOGxzqRe3tHX53tRkQYl6vaB2PhWCRsQ2/CDFttTVzioXbc6ATMFQr6MaqsrXv2pJMh/sYY2radHg7elSMI4RI3oI2i+vPqg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772715461; c=relaxed/simple;
	bh=hg3VybHGNM8B9fWAA0K4iklWWMcCpPnj8i/igGcKzqQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cNtA8LaxXw6uRWKyi1WbTtjd/5/ylSoLKKAoqoJfxbJNiioQwu9MYlExmunSGC6rrYdBcQca7ztzg3JOE92/vDN6ZnqYddsV2B1tKKixKFCMclMO1/x8IAF7QyuPCX9bSqMKGerebKhAh5P0sI/7UpT7rx3v0AuGyRYocviOQLQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WutLMnNe; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b79f8f7ea43so1300889966b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 04:57:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772715459; cv=none;
        d=google.com; s=arc-20240605;
        b=cqZINCRAfXy2JymAu3D0AZe+NwS2Q+cJcgXHZKtMoWm3lkiE4BmXNCCnYtH5vTAjGe
         cUYNj9LL/iLla8b5weYPNuODZ/1TKLhAAykE9iDuKYkb8VbDm1W8wiXyAWntbRGf2xdj
         6U3NPEcHWXfW/kFxOv8THjsgghhef5pCxRWHNzmSiiaCEhblnsn1tKoJ3K4ppr5BYlTu
         xNY3mg7eKN+l61eMq/puHy242sFTd8RSUeHVku/6zxmBhnPWTlOHGq2dCUalfZPC22EX
         weUE0kggXoDTQsdksLOwar30O97zKYX8CKoIrk/60UqnFkuekG+piZn0uUICVnHSI/8t
         JyxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TqgYiuwtjyV1UQCdDi018aQv3q0kpjTsempfm/GxWAc=;
        fh=BRGAJNxoIv61+p6t7I7PtS523stubo1IWIvIZBh8GwQ=;
        b=MAueh6cpkCZyqfY+ESCIAdhlyOnevWswEMvX6yDkzkSLGGOpIj4Ztys44bbWFu9gKD
         s6rCw45ftqktHIJ4Wu2lHPmRQQswOF0EiPQSuPM5HsDyAEwuF905Dm5dpc6glTYRnsRE
         9FXfLHU8LJYAJ8w2zvgd11xH5Z7r6CB6VHrlCtQSxFU0IPcTSS6VxVrYgZH5bcwStW6t
         ZOLU5QgfhxiEUf3D/BOpPwihTPz92Ltk0jvLEM5umdFVOUBQ1Zc33eDKV4HGit0bqc7Y
         DU3b82+nXcW0lcHlT+beTjrGKn9AWKs+/5fLi9/xadpsJ93Kdgv8kB2nm38A1fBwiOAy
         wgyw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772715459; x=1773320259; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TqgYiuwtjyV1UQCdDi018aQv3q0kpjTsempfm/GxWAc=;
        b=WutLMnNe6cjggZkuJNRbsfipKN+sle821AniV/rIgO4dcGxtk3/Q9ws8EU/7N+1kdi
         faom9xBT1SPQUxUSww72fcNhAdPSdNplLX6UrT+HvqYJz5gusQ0XY4MHNsiAtWMZnFlD
         1Nq+D3m1Rk8z4CA+NmjTCRMLE961j1VZ12Nqe4x5dacL1WN2QLbNfimQzu+Q8RS8lIRa
         3U9/v2Dsl82PmgciuXRrbW2/rL6SdJtncApj4ba5x0E8lI/F36RT/kbhswi+ZB5NWyAT
         bhaNL1Ai5zz1IyJ0eLllOOfbmdzPbrHb3SdXXatcykTN/mrxSEdOGpM9rPME662aDRfO
         xxGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772715459; x=1773320259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TqgYiuwtjyV1UQCdDi018aQv3q0kpjTsempfm/GxWAc=;
        b=qcyUZ3KEPzK18ex4FowUzsgClfNszOOy+V95Len3+dEGoD3u4FV8Npd4YgXRxi2sJO
         +ZZBmv/5QPSMKmjfhuJF4xt1+4Tg7XjdtKPPO+5a+p0b1Fy1t6GwDmtv4bE0sEHc0Fy4
         HjTqaSoLZ2bhrTrYt2po//gtuGiy/Uow18WU0AZKU0/l5uLYV677cCAEjDJXJhGwwc4X
         ffjKi7PfDE7rkdhN5ne0vreu364RXrWFcJ5QYfaUpmgcSkwSvZMm5BySf3sNaUKyBXS1
         wr1kwi2HdaICurbN2hhdtqJqazzr8zProJNdsgx5uQ0M270TuXXm3id3NIH3Mr8QtJuA
         8w2g==
X-Forwarded-Encrypted: i=1; AJvYcCWySPw/uRydnTOVyJBulnPQyPOq3TUlU9GPbwhIBnPjRzaWTYCgIvq+T/Kqeyb0OfctWyz9WfPXagFf@vger.kernel.org
X-Gm-Message-State: AOJu0YwVFWQK4RHwOrigWZDfPi/R8fMyGZVxbsgMMSzm4ZyfCU6M5e8a
	d1Z87ZvdO9e7oYK0rS8YqASzxNhC0naenrGfzA1PwqZUhGrulwfWJB1qDQJXFEB9Gnqe7zasslq
	fIIHKVyFMq5Qay9dQu2Dm5j/ASv21F5s=
X-Gm-Gg: ATEYQzx+9haboR7WfO60HtX+gf1/rzX/ZLm2E4ZTFfiRqkdYvsezVKyTYiwTs3/GPl/
	DVIBTJrlO9sD3KcfaNnqVeunEMWz1xQBMUSgs9dCGoH3deqpXD9gu1Sh2NvGURSIQPbAST+0Kbv
	bmkmfcMAJcY1NcI/yRJU+qcA6Tz9X1r+/IMletPwHtHkfUXjExHKMIG3kLk8MaNXDfZo9xrkS2D
	p+9WhQf6WDw4NeGs+D/O26IsJMZS3hvas58EX+WFPWeEDVum9SFoor+zQ3rpjSu39T5K9LUVEVL
	kONJdfq/SMy2/COIiPrDvNUjvfECgGYtNvRIg10/D9+OGpvED3tWzzw8K7lKdSb+pGZZv7p++lh
	2MRhWDGGVZ9reIJjgjXTEuQk1
X-Received: by 2002:a17:907:3e1f:b0:b8a:f3c0:c09 with SMTP id
 a640c23a62f3a-b93f162c9e7mr352403066b.59.1772715458473; Thu, 05 Mar 2026
 04:57:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-2-wojciech.slenska@gmail.com> <5bba973b-73fd-4e54-a7c9-6166ab7ed1f0@kernel.org>
 <939f55e9-3626-4643-ab3b-53557d1dc5a9@oss.qualcomm.com> <CAMYPSMr2JCQCX69PGUk1=7=-YfBcyFDpqQ6tMQzFP040srBA7w@mail.gmail.com>
 <f141a098-efca-46f1-bc1a-433ff03915ca@oss.qualcomm.com>
In-Reply-To: <f141a098-efca-46f1-bc1a-433ff03915ca@oss.qualcomm.com>
From: =?UTF-8?Q?Wojciech_Sle=C5=84ska?= <wojciech.slenska@gmail.com>
Date: Thu, 5 Mar 2026 13:57:27 +0100
X-Gm-Features: AaiRm503EZ8xJfGcfxKhcFmT8KmQTYRl_tl6gGC1NdHevXlHzYa69ef8LksZEX4
Message-ID: <CAMYPSMr=2WUvjh9+ZDRkgqq6B3=MB9xmwp4NkKnWpdnNiNXf6A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: document qcm2290 compatible
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 4F7F4212350
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271565-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wojciechslenska@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

czw., 5 mar 2026 o 11:54 Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> napisa=C5=82(a):
>
> On 5/26/25 9:39 PM, Wojciech Sle=C5=84ska wrote:
> > pt., 23 maj 2025 o 01:30 Konrad Dybcio
> > <konrad.dybcio@oss.qualcomm.com> napisa=C5=82(a):
> >>
> >> On 12/21/24 9:44 PM, Krzysztof Kozlowski wrote:
> >>> On 20/12/2024 08:35, Wojciech Slenska wrote:
> >>>> Document that ipa on qcm2290 uses version 4.2, the same
> >>>> as sc7180.
> >>>>
> >>>> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
> >>>> ---
>
> [...]
>
> > Once your changes have been integrated, I will resubmit my patches.
>
> That has now finally happened!
>
> Konrad

Nice, almost there :)
Please also submit this one:
https://github.com/quic-kdybcio/linux/commit/cc20384c4484507fbd18b8a01c79b5=
e7f5b6cf8a

With this small correction.
+                       reg =3D <0 0x0c100000 0 0x2a000>;
+                       ranges =3D <0 0 0x0c100000 0x2a000>;

When it is merged I will resend this one.

BR
Wojtek

