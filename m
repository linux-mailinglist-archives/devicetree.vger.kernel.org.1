Return-Path: <devicetree+bounces-305479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BRqG2CNHmoNlAkAu9opvQ
	(envelope-from <devicetree+bounces-305479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 09:59:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB1762A02D
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 09:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F3E6300B850
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 07:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC093B776A;
	Tue,  2 Jun 2026 07:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnwBvx1A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DE221ABB1
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 07:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780386891; cv=none; b=IQsJfZrpvxdPpD/IqHi0MEepuCBwys4N435xxu2AYNgCDoD3jJ4q0ZOEOIdi9vjoJU9RE1j34WvcYO5l3v/HVNd2B3KGJyeNl2wvbwGa3FPdIPmrRRWT0ZPqSgmGfdHtlLQmoB4mfLc1dxQy/MgXlV4ChELXj0uGjs8Nxs+vx5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780386891; c=relaxed/simple;
	bh=WfTsoFXIxcTqFubF/EPMTNoAS0FCd1CRgvxjX7gQwa0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G9Z2Y7jUD+sBL15KF3N0R+hatGxD7ciyBrAxAMnsWrVROdwRkJjHXWZWoz2aYPyR9FDyPYeYXmKTGfDWxfPSWSIt6LnMt83lKfKRnNfPdOs3cJ0VsYDv+fsvA3SnQnoWgCiFbC5TaLZU7wqpAmSOpg0TCAD2XLjJEGVGOfxHIZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnwBvx1A; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D2261F0089A
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780386890;
	bh=NR2KKF9EgpaJ6lyGdDJ1sup7QrZ1LCYzjkZiBgD5jSc=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=XnwBvx1AYLnfQN0jfgTueYpdpl7S49bCAsnBTsFwWBzs85G2UoneLkKsu2fL09lLc
	 4iV6W+vxSskWI6QwdAtm6oC9Iy+/ZaSZ92mWHrS5Fc2HbPsBynEPfIMJR+J//YeGvy
	 dkTEQ21q4TYGC1LdlwJYiNKR8BhjEvBfhTHK+Gp7O6v7Q3vZe5+rDK3rDNoo98QXlc
	 MxsiI1UcKt5XsDONNHIDhOQ8KKWhaZObVuw5ZE0bPWtUw/5gaNibadHHw6pBEFrutw
	 EyoVWev/B3piZGlSk/O+RFftijc7ahzFE390WY3PfO7v41Ya1ekEOjBuRleETeLLkQ
	 uUhTRhuVJpIdg==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-39676d82b7fso25456631fa.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 00:54:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/uVRVzTbwwikZEScTSZwTTZKDDr950RPh/r/oHceO5ho843dV6gjvEJPA/OPThI1ZD5X3BChwp/veJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxCFyaTS7zRbWj5U04njqZBPHYuHZ+83RUFint0IyoFfRD7WOqD
	Xa7PhfPiErQ8e9bGAgGvrVAXtCTZHB+ZUCwroZ5Q8jx4LngoUrubH40N6NggirUxjnqDI4NgYx2
	HdV92FIc6qWDf8eG1PZMwipawjwtiU6+9jV4jgYK48g==
X-Received: by 2002:a2e:a805:0:b0:396:6bd5:a9c7 with SMTP id
 38308e7fff4ca-3966bd5aa7bmr38401971fa.19.1780386888886; Tue, 02 Jun 2026
 00:54:48 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 2 Jun 2026 00:54:47 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 2 Jun 2026 00:54:46 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260601-sm8350-wifi-v1-3-242917d88031@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260601-sm8350-wifi-v1-0-242917d88031@oss.qualcomm.com> <20260601-sm8350-wifi-v1-3-242917d88031@oss.qualcomm.com>
Date: Tue, 2 Jun 2026 00:54:46 -0700
X-Gmail-Original-Message-ID: <CAMRc=MfOKShaj9=TN-PwzpGUaKYFU-BmonNAGWmRp+CP87EGMQ@mail.gmail.com>
X-Gm-Features: AVHnY4LNyywTd6nvyMAUzlXRlzp8UhQ5P2Zf8flKLEiDPJrobLKGsEvAf4oP5r0
Message-ID: <CAMRc=MfOKShaj9=TN-PwzpGUaKYFU-BmonNAGWmRp+CP87EGMQ@mail.gmail.com>
Subject: Re: [PATCH 3/7] regulator: dt-bindings: qcom,qca6390-pmu: document WCN6851
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	ath11k@lists.infradead.org, devicetree@vger.kernel.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-bluetooth@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>, 
	Jeff Johnson <jjohnson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305479-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bgdev.pl,kernel.org,google.com,oss.qualcomm.com,gmail.com,holtmann.org,quicinc.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BEB1762A02D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 1 Jun 2026 11:46:51 +0200, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> said:
> WCN6851 is an earlier version of WCN6855 WiFi/BT chip, compatible with
> it. Add a device-specific compat string with the fallback to WCN6855
> one.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
> index 105174df7df2..3d3c6fa7ecbc 100644
> --- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
> +++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
> @@ -21,6 +21,10 @@ properties:
>            - enum:
>                - qcom,wcn6755-pmu
>            - const: qcom,wcn6750-pmu
> +      - items:
> +          - enum:
> +              - qcom,wcn6851-pmu
> +          - const: qcom,wcn6855-pmu
>
>        - enum:
>            - qcom,qca6390-pmu
>
> --
> 2.47.3
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

