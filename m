Return-Path: <devicetree+bounces-277847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN5GHvoUvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:23:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE02E2CDA9D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFDD7319DFE3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC8137B3FE;
	Thu, 19 Mar 2026 15:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vcF+sh+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7E13D3488
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933518; cv=none; b=cyZQpAL9NPkAtv+ZxjuXqLYCWb7NhF8TfF/2NQiUAVpik9XirTvFQWtOFYkGnz2Dvk99YLSyDd8KtgQN/d7ILLZd7QwYJcCVMSmILATDpbglosnHWmDXbsnqxyq8tNxqsktNUsri2Owcf+ngG1FKNYX0ADg5rrsSKcDtfo3mDxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933518; c=relaxed/simple;
	bh=OVF5iAAqdJTr41/LgOTWxetRUPI07mcg6qV0Dr9eEqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TZ44HojuTf0M35MaequTFxfVtIJxq1R3tNmoKNTBVuLHqOn6bqlh1jcvz1Sr/3zFpWciCvnGK6tjK08eAgJ524X+V6RhScgj9hcm/fusbzv++EIfh18cPZxeZE7x63MPUykGRqxBq5h84kQ4OxHF697UWDpun7ojtkXyLCy3VPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vcF+sh+8; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-661cfb9f3aaso995617a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773933515; x=1774538315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DWpVwltXVlWC8w/NEtJeLgYjgTRX+Okg3gaLBnKxQCQ=;
        b=vcF+sh+8DHD3sQZnTrUCY++2Bw7KiixzpaHgzMoRH9Qd3d5iQAMx5G5o/Ka+VjUCx4
         V4bJujiWthBBtFYUft9+1cyP7yRHjyCnYJLBF03tOXNxcGkSmprVBbw+jfU/CqqpZ2Y6
         /GPP673z/jVgd0qrEINcGkl0A0tVgedYBK+uEtW433BNJ9z/BToHCvXCpo0/vhvqhzx2
         jXLgIzM4NL+UHJYz6eaudaFg1Eot0bntZ/ahuq9AX5vUcfvxC4gY+Og/BdUwqqeio2v3
         h7QJbq9abTGUyYIlSEcq700EM29NijmbXCN37tupc4GIjgk0ilH9tEQos76tpeUJr0a3
         YMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933515; x=1774538315;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DWpVwltXVlWC8w/NEtJeLgYjgTRX+Okg3gaLBnKxQCQ=;
        b=MFQIqX4BA3h1Yq9wblV4FTpntKBISJe2Hmdx7ux042ZugYenBNyv1gSjPjhMaP8yoB
         121whIIWz0GS0j3+86fLqG5fBoPzoKu0DYn405Hv+JUvDFdaluhsqc99bVJioUIIKLvM
         0AIcrx4U46v613a62Tl+FDqAk4D0nHbZ/GlJkVfFBodEsd8ngKb42ZtZpObIPQcxTDsM
         CCpKpEdLQfXS3/8pFtdj1bcoegtL2/W4HmnwLWbm3wjB5dbuZpDS506IVvAns8HmQh5n
         +SwdxlxmN3fLiM+p+p6FlVvWNbVOvlvjW08jf+Dk5EOpvx5agHT7bxV/RvE7CXr7f/Wf
         lA9A==
X-Forwarded-Encrypted: i=1; AJvYcCW74jzbcTEioHmuSm9rVxDl8rEzf6X0seC2CxLu4zmVHTS/8KSI4F5VtefYCL5FiIY7w9EUVSUjzSjj@vger.kernel.org
X-Gm-Message-State: AOJu0YyDbV4znWN9Qm3vCjkMJxXMrhtZbMaYLHmTd4cMK4r8S20NXjO7
	7JIfsdMosr8m0lhvC/pffxMgvGBssPy5f9XYM4ZyQngQLj/rs5mGvfDKSNjmG/rODxUsulwi4nB
	NfXJH
X-Gm-Gg: ATEYQzzpe52H3GOCLQUcpAvA9Dfb2QJWBvgaroVBQftmi7sySEkH6IJQYV6ZE2Y9F9b
	ZLEgn1Mmtsoq99wRp58zFgxOshSgKOEnb+ncE+VNSBB0UwuoMAGBkkd6khRnpFICZ94NLEKU1Br
	rqkHnyWT3IYXExUI5a6zFbgjI+REBB1ARLol7SVbvyWLPbqr3FNu50O+00hh1ypZXe0aHE4KKH2
	HruIeFmvs0hsjHK6ecrp+zT+DVTUfC3eTknVhCqb1hR2fsryVlS+V1MXncDQ29fZ3hjB+7MxICm
	dGLlvlpU5vX1pEcOp0QCfA5Z8VubVr6rB98bVrAVkWKzb6zSFYCjCcD5kJ3uamuUGhFEe5FnG5Z
	OPO/VXQhV2l1A0yA3pkbWdthTJG4hUhbXvrZMvXcoaW3ssDevMx9VzMKxRQZRZAuHqF8sBcsWFz
	udP5SeRfSPMeOWNO7ywJON8Koom6H9dt8EnTCU
X-Received: by 2002:a17:906:e244:b0:b86:e938:1b21 with SMTP id a640c23a62f3a-b97f496b63dmr353386566b.23.1773933515086;
        Thu, 19 Mar 2026 08:18:35 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.224.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f170e5d4sm464497266b.55.2026.03.19.08.18.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 08:18:34 -0700 (PDT)
Message-ID: <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
Date: Thu, 19 Mar 2026 15:18:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
 <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277847-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CE02E2CDA9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>> There's no reason to remove that from CAMSS - it would be an ABI break
>> in user-space anyway.
> 
> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
> subdevices, then for the sake of simplification it should be done for all
> supported platforms in advance, such a change will be independent from this
> particular phy series, and vice versa, this CAMSS only driver change will
> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
> precede this particular CAMSS CSIPHY series.
> 
> For backward compatibility with userspace a noop stub will be good enough,
> it's not an issue at all.

The standalone PHY driver doesn't require removing the CSIPHY media
entity from CAMSS. They serve different purposes and coexist - its 
important to have a NOP from user-space perspective for legacy and 
indeed for new implementations.

How the PHY gets represented in the kernel is of zero interest to 
user-sapce.

That said, stubbing out the media entity is independent work that can 
happen in any order and IMO is a separate debate. Whether or not CSIPHY 
init sequences live inside of a monolithic CAMSS driver or live inside 
off a discrete csiphy driver is not related to the media graph.

Happy to have that debate - and if indicated, carefully apply patches 
separately.

---
bod

