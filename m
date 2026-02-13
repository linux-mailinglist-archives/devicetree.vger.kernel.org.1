Return-Path: <devicetree+bounces-265370-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNQmGCQxj2mhLwEAu9opvQ
	(envelope-from <devicetree+bounces-265370-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:11:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2F2136F76
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:11:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07984305503C
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D5B360728;
	Fri, 13 Feb 2026 14:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="cn7gYATX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E4835FF43
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770991738; cv=none; b=ecFIQULngNBG49c9t4VlrRb31IfpqN5P8ccv70NqYznCqZFuQSizZvCfYMPcBgvPQ1eVit7fDyX1zNeEICRyq8uMXoTr73ALQ79QtE/8Pqre6kEdUCQ/mj4n44+eGOuJnRHAKa//320nY12bMsToPzHufuQMdt0JlOOh5280Ius=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770991738; c=relaxed/simple;
	bh=kSxpGwm9UDimkXPadlMLx9J4LPHuy90pfvo/9O4YcSg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=NAACZPVmwIkEjUzkPHtfsT7b33/RS5SpcsTg6uy0l0BO13SA4BImoPCh6FBr8g8dnRvwYLD6x3s1KUv+8bm+AhlTE126zbdcWQJGLApgJJ+12qJP+DzpCGWLi5Ealm/I8MAB0l2mVyvopPMjIhNB3nYZCEa3j1TTDXu2lVxKyZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=cn7gYATX; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-65941c07fb4so1228997a12.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 06:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770991734; x=1771596534; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDWCaCmjcMdTeU70IpQ6l5t9XJKDcXByz0w6wvm7lMw=;
        b=cn7gYATXW2pTKK268nnPC96kyjE6vk5jUTQgnqIFRP5kqqObCjRljl4R95gTd96L6M
         DPnWW4erxOVa2X7ux+83MCOsBwa9Cj9NnNVtUhwZQ7DwTV31Cd/5+/N3NIN7i9zduFrp
         Qf+aU2Nql3i9pxJVZtggqel1lfwaTkPMcTA1LUiiQ+X83z8V7BIVnB8ZYbCA1OmZAQPt
         HWDslNDDUC8StTtd2ISTAIHcqNokBLZ+F7yqQE+wk062LMISnYQT+jTokXXdQfnWTmgS
         sV5womhihB1B0+Zk7Ydflgt+9DeFMPXE/E1vIOoOnKNnaZzFS55Utd6Zvf58SfeUbk6O
         PffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770991734; x=1771596534;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDWCaCmjcMdTeU70IpQ6l5t9XJKDcXByz0w6wvm7lMw=;
        b=gPOZarKdlyyp09nPkwAKpFwNFnrgumZQpmTY2fQscMGygAvp7Ye2iEojCAGuX7H64e
         VJAkgUAMmrJvnPf+FMPQPe9pxLopPDXBTebfhlEC4MXH91CmIIuIbmb0YVkHf9bBppiL
         kWpGXImuM5jJ4fuVDS6Z567fStr87oQvCQYJsUNbtDxRydE3ayIh0TsHUpxahNqoO6wY
         OxbsyQ6D95TNvoiOwsny8xjkOO0IaCCAqJsV7DR8UPcBCTYPKP5Xr4/tIi9nZU2LamsM
         qdcLIygbWfLV1eKIWkLL7hMiPY/D8YWT/QwKhqaqApQX5HYXPo17ooIR8WVCBWCByTYX
         zupg==
X-Forwarded-Encrypted: i=1; AJvYcCU0uuR1Jsl6uKbg4xSDtsIz3HFlQT7eAQ++3YBNIYywUvpAUzzUZXTO2rh9uuqPZD+nZrkJBNPmxx7W@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqo7QqIK2LCFV99NazpoHII5hYuBAr1fl8uM2PGFbMBGmG1z4W
	0Qy5kvkFciKGGdtS1zZYvfVdTqByBFy/91NKuf+2vj7tqsymNmBiWHvuiByQ9tOeuKI=
X-Gm-Gg: AZuq6aILVDF2LQahN3cXnILlimk1Fy+HWDkAZUkSHuthGCZ39YLuCh6uSfI17OI73Q7
	SMCnrCFJwJC8gQGF5TRDID5Qm62Rb5/bnu8pOp66O1eHNDCVEd7qijbAAviz9b7QQ30KhJln2xK
	KVRgc/yN+NQGo2x5DBgmnf3n/n3+IsEA4OtZWr2dITopcA711DDaZy2/E4WCIzgrYBlwEnpyOJD
	ONas3Vv3Srmr3aQznvQ6KtDXKJc0vFGrujMV/eqMOxwkkcfsWDZWvcFql9mUNLPnw7m1HAkSmKb
	nKG7zz4OerTACWs9Va/2QzUKTpDTR0mZn14eXd0En0+hwQVyCiBs5jnnStTi04FmUii13elGZ9T
	VqfXML0odTj5ZH9CoUahMmo3vttGRjPdko6ZOMS65XnxIgRPtOILwrx+7qSJub1GRM7qw2rHrO1
	9M1MntZLpXjQBT7qNgyAS30qIQuOgYPGX2gX3tP37CG4BQUuJRoANNTH+FL132lfA8fqTM
X-Received: by 2002:a17:907:961a:b0:b6d:67b0:ca0b with SMTP id a640c23a62f3a-b8fb46764admr98204666b.61.1770991733815;
        Fri, 13 Feb 2026 06:08:53 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6e9cd6d4sm263856066b.23.2026.02.13.06.08.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 06:08:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Feb 2026 15:08:51 +0100
Message-Id: <DGDW69W84LJ1.2GHM2WU31VANR@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings:
 Document the Milos UFS Controller
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, "Herbert Xu" <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Alim
 Akhtar" <alim.akhtar@samsung.com>, "Avri Altman" <avri.altman@wdc.com>,
 "Bart Van Assche" <bvanassche@acm.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Neil Armstrong" <neil.armstrong@linaro.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265370-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF2F2136F76
X-Rspamd-Action: no action

Hi Martin,

On Mon Jan 12, 2026 at 2:53 PM CET, Luca Weiss wrote:
> Document the UFS Controller on the Milos SoC.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

I've added you to this email now since you seem to pick up most patches
for these files. Could you take this one please to unblock Milos UFS
dts?

And maybe you could add yourself to MAINTAINERS so b4 picks up your
email for patches to these files?

Regards
Luca

> ---
>  Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml=
 b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> index d94ef4e6b85a..c85f126e52a0 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> @@ -15,6 +15,7 @@ select:
>      compatible:
>        contains:
>          enum:
> +          - qcom,milos-ufshc
>            - qcom,msm8998-ufshc
>            - qcom,qcs8300-ufshc
>            - qcom,sa8775p-ufshc
> @@ -33,6 +34,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - qcom,milos-ufshc
>            - qcom,msm8998-ufshc
>            - qcom,qcs8300-ufshc
>            - qcom,sa8775p-ufshc


