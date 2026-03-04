Return-Path: <devicetree+bounces-270855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICtbGEe3p2mMjQAAu9opvQ
	(envelope-from <devicetree+bounces-270855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:38:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0511FAB4B
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15C1F303AF17
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 04:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12CFC37F736;
	Wed,  4 Mar 2026 04:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a4PHeZ54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE3D1DF25C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 04:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772599107; cv=pass; b=fNtNVuhebYen34ZQkwczVlSbZ/vXLQaiTLrt2CJ52W7D3w2nEF5YbGyE0iF25Yb7/tyEFYycUAp9wwJyW4/AvWLraA7mDn49vOaOeiFuPWjWke38U0+6sFEkao8Z5DAtQJuGn6BaanLXO1bl75/8P/Z3XGmOTK3zSkhri9S0K7k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772599107; c=relaxed/simple;
	bh=IMq/66z83Cb1wYKbJHyMR5HqtqYIMKKZ69NE/x8vY1g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ElLyxTWvkLnSmsY79vV+fQcZpPEWvUoFPEPTdGUO4sK75LOH6gHGJ+bUxgTbBnqCx4sDywGvoT4jCDJyIVpqDxPzP8yGSnJ9D2b2FT2I7zohkQ+BUkJahufdourq8VawcdsZ9Cx5idQ2ghNF2zzVPU8pBf/hDlaqvzaXOBcNpKM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a4PHeZ54; arc=pass smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439b7c2788dso1894766f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 20:38:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772599104; cv=none;
        d=google.com; s=arc-20240605;
        b=cIYQMT7j+Iy9EN2edOyKXx6scpYBWoXZcBD/FLLlVtalo5VaUNpPfA2tnEsTG6RQWU
         7iaYSicWoh3uvwqKaGK+Uwy8bztcVGuyJ2WfAbR62e2TOYDyHUCeJnGoHm3s8nWy0pSC
         PG/fJYRU/F+IpH7AkTBdFsXVnMc4GhDmb5VkzhM160/Dw8Hy4TyFancHMBTdQKm5Hf2U
         97B46xsadSSenDVU99FD0T/LWzutg2ImjOxhboc53p1qj6EcVGdpGCwMZq5NBYvBdUso
         RaiSJhcZO9F93lTHldL2U/of/XVmV42n6LiBvrRkiQ+YovplGVCbbPdlehSOZGa4eTSQ
         XxFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IMq/66z83Cb1wYKbJHyMR5HqtqYIMKKZ69NE/x8vY1g=;
        fh=TAxeT98BNH8q/ipjqDoTlO32RVjIwTsaS0+83NFeq4w=;
        b=Gf3HMQWTn51n9zUCls2j5332KC4LbK3sC1FH02lPVVLRnWyt2O+4QnXknbbLgRL3r2
         TM62Y5BrgwO50ZgeinxpnU8H7dxOmd+VUcHATFEipNVGDaBEgc9QJh9g5MZPoPJwPV9c
         L0XQg2Zx/5vNNhG8QJ6xrAl8bZVLD4mbqxI0nqLy/DCmGPn/oe+q6R5dyDp72qSaRDTo
         MBS/DBjCpKlKEJwa5rDqs4nE0++Gq99swigQTau5n3WUjBYZ9Tz8K9S9u9ZqAv8nU2kH
         TUpF5ovTQKmp5g7zPkRKYZLWawKw+w+IAIKWyXPTN3QZ2y7XCZbissGw2zoKwswcWiGe
         Gv4Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772599104; x=1773203904; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IMq/66z83Cb1wYKbJHyMR5HqtqYIMKKZ69NE/x8vY1g=;
        b=a4PHeZ54fqu9d5dVPFbZdcYJfKNZS+n8sza8UdDwvU8W4oplBUnUD/bOWYZp0p0nZ4
         u1LAKHQE79lkTqYphT2+t3/e49W1AS19x2WUd7+bHfgEe/E3B/ppmxlX+nZIX2XfPe/n
         b7+ojlG9jM0Ofo2VjunjkP5jdv8235577BTSXAhOqVXpLoUYs4X7f8+SIatthXA/6+Pf
         pMvaHpKvauMBQWkhefcxnwmYRGG7Qy4M3RNCZU0aTW+0NVtocJaJSmw8P8+aolqnwmzG
         mho1yrTjZREPRgcePSHNq5u1HbckRqF6Vl1e0NnKm6auw2GlJ2mUy3/fjou2iDus8S0f
         wdSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772599104; x=1773203904;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IMq/66z83Cb1wYKbJHyMR5HqtqYIMKKZ69NE/x8vY1g=;
        b=ptYfK82147Es7yh9MyNNukCUGMm4IJ7bHz6yPJtXXjjY3c200wlxugeeQ5lsiVRQjr
         tj9hyfSlyKfY5Dsq6xiRgdCwAD/feYyOQxDsxO+xMAdiCGiTiQMy3D/npjO4TXKQMW2x
         WZ+TaS1kqhwe2KwaPibDvlG6YacWnOZjt1Lc2UosbXcFn8uNNfoRg5OqKG2Z+awjBlFx
         3hmfDSx7NXvc2LbB2VF4SyIPzYSh1gqxYm/dR8685V3b7Ob1IFswm649fdWCfSZ5EsNw
         5P7K4Ub8oydS73sDNyWn8EAFaYIqWJpY479Vz5uChVPiTLUthgppda6bImVsOCuGfo5w
         Y6ew==
X-Forwarded-Encrypted: i=1; AJvYcCV0KlclBpRIQgzboR19CEA5bsZwXIsFyKVzcVVXL4u0KJyjO/NVzkVMExKRosgwyvBCMDBjNuE1b0o5@vger.kernel.org
X-Gm-Message-State: AOJu0YxJbmM4xAb5ZYDDNmc8/mL5mX19Wk4uBFqWMPu9liC4VqZGaIrY
	VQnSxFx+czezNJ+LErNgNsjuwGh78mVQVctjI6Fv3NSmwJHrujzc/ZWXuiGPs1Qe2dqSQqC2vQp
	gKS/bDDb7C9rlnrMvhNYrr3px1kCptZvMzwJrBnPBBg==
X-Gm-Gg: ATEYQzwab6KsWgyhh/F7ylfNqoHkpeOxSanK+Jaz1chvjeDri/K5HiiW02zLgt9Xraq
	iELL5LuukrQOcshmXGD5npZZJxhI5KnM2ccnBrrbK9DP4wjXBeSNyFTfsR6730QPW1YseiwIhqk
	2vgkDVdOva34ujhXjO5MxuqTbxvUgljWCPgMHno5W63/YRLOcKpRbM2BGaTdwNFel1QqCP/Ab0m
	nOHmT8mVAeDJZXtX8M5236iC4lS3BjwWodi3da7lY1gbhm4jZFbdwv9aF+Tq+xraCHIkL0eNrap
	XycHICtiamJC9G1e4Q==
X-Received: by 2002:a05:6000:26cc:b0:439:bae9:6151 with SMTP id
 ffacd0b85a97d-439c80100b5mr1233744f8f.48.1772599103909; Tue, 03 Mar 2026
 20:38:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-3-95517393bcb2@linaro.org>
 <06249a9b825de30d1fc19fac873840ab3cd7f6aa.camel@linaro.org> <j46cw7ns2jvcojavsqw3f6se5zwjt6lfx7z5ahy56owtrwd27q@ufjrfwnfk453>
In-Reply-To: <j46cw7ns2jvcojavsqw3f6se5zwjt6lfx7z5ahy56owtrwd27q@ufjrfwnfk453>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 4 Mar 2026 04:38:11 +0000
X-Gm-Features: AaiRm51B2RI4RVd1gpKraSUcwk1_GGIfzTP-w_kfBb8uww1EVsubpX8PXY_AI10
Message-ID: <CACr-zFAZELW8rL2ui96G4nPDnmtxQ4X5Q47Ha4n1dF7iHcPHYw@mail.gmail.com>
Subject: Re: [PATCH v8 03/18] dt-bindings: media: qcom,x1e80100-camss: Add
 support for combo-mode endpoints
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, "Bryan O'Donoghue" <bod@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: CA0511FAB4B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270855-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Dmitry,

On Sat, 28 Feb 2026 at 07:17, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
> On Fri, Feb 27, 2026 at 10:01:43PM +0000, Christopher Obbard wrote:
> > Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
>
> Christopher, please trim your messages. There is no point in having the
> whole original patch to be quoted if you are replying with an R-B.

Thanks for the hint, I will make sure to trim my replies in future.

Chris

