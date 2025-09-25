Return-Path: <devicetree+bounces-221071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC71B9D0E2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D186E4282BA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEBA727B33B;
	Thu, 25 Sep 2025 01:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LqR8No3T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E2472627
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758764922; cv=none; b=Rhg4UpB8w+1+YMCZSPMRCLyfxdd51lxWwGmLvaddqNBTLuHUQPSIE0UGYa32xIdGnMkkmxTiNQ4hclBx2UtcrSmoXy1742i4iUjK11LB/Zwk7qN1P7CjpCRPPEH949yEJlNie5/djZUE6khmyTjksX5NnL6pp0IFm9fi/iLonuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758764922; c=relaxed/simple;
	bh=uEUbW/mjkf27/zieH5Tmr65ZhNxzaLqkETnngeAI3wk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lDmKap/uBs9MUIF/vueAc3oL7GT3BREp7GcCiKw9PuNlVNFETW77J1qIRbjdCszBt4nxQW3itFRnBLpfRCod25zCQZ6nI8tS8jWUAKBEFHjQMQk7z0MxTj+8rAyScpBMyeEVqrOyhAXFIxeh274BNPZKVzleZWkRijpLg9ekfc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LqR8No3T; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b4755f37c3eso420843a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758764921; x=1759369721; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=92Nb9Hz7Lb8YkzmP9hK2qw/+fYd5FK/gCyFQmOrz6p0=;
        b=LqR8No3TbjOyjqzBRWXFMTNL6/f39NfAiF3W51CcNYJr/5uh3JZ8nUBXl2QWBwnf/V
         J4OoAe8v7AKU+ZkY/8WgytGfH0TQBxwCZ8fqSX7ZrzEml3NLrge4hPn0GCY03x21I5ZW
         RMvzV6aIKRqi4diJsYjrW8o8iMDn1vwRZx9q88mSsqOIBo6xJvnDsgaXaaBmafw9cgG5
         TDu+jHzhIyd98OWJWZqLkiaWzYbbcdrhBOu7E7QOuLBwscvLFJtGwRn+CDcIdC/VVTJG
         ccXoXiJ4JVXFSkU1NkiMVqIsN92tai/W+kPFiqrjiL80NL/yq8nJt9WHYRP8f+lf0V0I
         7xIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758764921; x=1759369721;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=92Nb9Hz7Lb8YkzmP9hK2qw/+fYd5FK/gCyFQmOrz6p0=;
        b=BtLs2fikKUBRXzv6eqSVjzExD1rMnRUSSnIzquG3Nhii332xwPPEaO5bxsFc8bC9rY
         5f2AyElRpWrpJOfDW1pT7fzrA969tVkhu4e5ldE08rhKhUrQKRdNfT2dGDuZEWGwRW7l
         jYDbVzZWJYuy6w2wv/tn3ccTFcfjZK7msF7yhJ8Pqc+3cOPSsSrpYDzwAsLHKz7FvEKy
         LCHY817zF+WIHb5J6ScykHk8bWE6vC4mxT5YVJxGj4dHgMDOfmzYqjoQUNRyXHgOOA/o
         Y86s/9AwSebyPT3B/vJh/4e3GYBwDXsRTWfSfOzPtG/0TFLKmkszTz9BdbJ/yRJMIKw5
         9Pfg==
X-Forwarded-Encrypted: i=1; AJvYcCWEUJTOYu/alOwvUB8Pt6sBjjilpd0Cc+j7ImJCxaXw9shodYQevYXnHJnYiX9CIv26Fn1SnVYmOykn@vger.kernel.org
X-Gm-Message-State: AOJu0YwULxpt9KePf1S3qgznknTIzhBYTNSF3TxqyRfsUkwYGU7RhaNS
	Ftsg1jr5xIOClKmXXWv3PjpdOZaHnZ7979s25wnVI1MEhthjyX2VnECJdTSfLpVuPpQymp5WxOj
	VoUb4Ih3a73bhuGgTDdbNFnNupQXnSRM=
X-Gm-Gg: ASbGncsruTcdBevuvd15U5+oeDMfifoUu0s6pIBymWVgDNS6/tVykftB8Inqx8F1qB+
	aYUA7qK4TEgz6ci7GLrN22TGZsNwlXmR1nsBaDjdvG2EA3y+5bg/Va+EfwdJiQ6ylf1ZWy88/U4
	rUoYLAhSbB3V/WfZyS/n0AfoW3TEcnlD5Qr8nPExpvGfiFVx8hei9nHmihfFTjuuPK51T6yzmic
	ae3nvhS1+JOee3SSColLSNM91KLlB+YI0Fn
X-Google-Smtp-Source: AGHT+IHlr77UrCorEUgxFRe4ac3Y2vFO6kT+vJ+nz73+ggbDyv6X1qfmeKHKY7Txps+jnwxbGEp0cfwSFTBAAzeUavY=
X-Received: by 2002:a17:902:c943:b0:269:9a7a:9a43 with SMTP id
 d9443c01a7336-27ed49dfb05mr20608725ad.10.1758764920643; Wed, 24 Sep 2025
 18:48:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com> <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
In-Reply-To: <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
From: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Date: Thu, 25 Sep 2025 10:48:28 +0900
X-Gm-Features: AS18NWACOefzDF4H_XC4HoeQYmeAv41arytX6EqlbAzLDXMVdDJrGEZAY9f_SCE
Message-ID: <CAJKOXPc57_0pJ2ZWf2cKSKAcQMc3S_mHKQxJDzWH7t=mgim3CA@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 08:37, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>
> Add remote processor PAS loader for Kaanapali CDSP processor, compatible
> with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
> interrupt.
>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  .../bindings/remoteproc/qcom,sm8550-pas.yaml          | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> index be9e2a0bc060..031fdf36a66c 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> @@ -35,6 +35,9 @@ properties:
>        - items:
>            - const: qcom,sm8750-cdsp-pas
>            - const: qcom,sm8650-cdsp-pas
> +      - items:
> +          - const: qcom,kaanapali-cdsp-pas
> +          - const: qcom,sm8550-cdsp-pas


This time maybe without HTML:

This looks wrong. This is not compatible with SM8550.

