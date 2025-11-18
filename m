Return-Path: <devicetree+bounces-239615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9CFC6794E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 06:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 39B7A4F2CFC
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC4E228A705;
	Tue, 18 Nov 2025 05:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="gILU6ZmT"
X-Original-To: devicetree@vger.kernel.org
Received: from fly.ash.relay.mailchannels.net (fly.ash.relay.mailchannels.net [23.83.222.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F35B24DCEB;
	Tue, 18 Nov 2025 05:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.222.61
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763444004; cv=pass; b=S9G6poPE9wOHRP8wOuTOgc1FsdECI3AEUMPMw3I6H0zFwzvPmYWMGaVdCE0vtFc6bFW9o/3presxiZjywwUTsSJdNvnQ8Tb0vl04H60np6lhQMQV90B2RHaJGLMQ8ahMak70NBtVFSkyQpSxLYy7NEwCztnv6gHHcLe1ojvp/BU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763444004; c=relaxed/simple;
	bh=YCLxSaIuq3xQjBUGgyM1k5WxYJITR8WmHAhcy2fUu/M=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=RxIEN0/OvDnrlUw0Qry2Sz6zUE+XnO3DBIgMxpTQStX/PbftzDgUOwhz5yV7nCRWU08sTSt8kHcKkGdUrEGqVdKcWIfipJTntD8v/ArNJSgzzeokhcg45tNq9zbx9MXinpo0RWbk0l0XsPdQVuzcJwGhS4V7mgoGd0DAhth1L5g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=gILU6ZmT; arc=pass smtp.client-ip=23.83.222.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 549CC161D2D;
	Tue, 18 Nov 2025 05:27:23 +0000 (UTC)
Received: from de-fra-smtpout10.hostinger.io (trex-green-0.trex.outbound.svc.cluster.local [100.98.178.132])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 0DAC316270B;
	Tue, 18 Nov 2025 05:27:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763443642;
	b=d8NiZckuUTmtENzUS9A7/G97h6snHeV9d0r5N6QE3uII6cabCnRR5A1SpE5hqSeOG/2jH4
	oPU8yA5fq9QusXNHZ3Mc+SL6TmtEGqjXnep/e1naRcsSnUtMotJ1AvJGJuqJirXAw6L0TW
	+s/FUDBfzTniu+5wmFcPjyjrC1E7mW9RmYqAhASlDhCm666zj0gabk/mj6LjN+MdiRtDOQ
	b4g0a52todUYiSKlKJtxqhBcjms90WQOAUU69/0+6sdYOt0ZguYWOWcl7zHKsRs7S9K9B0
	kOFNQUc5MZ/ZHkeT3osPiN+pLLyHZiL5kfp4yl0ah0wluRJl9yfBsnNmnTGPNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763443642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=79QY2zbPjct8a5PYToQ8bQ7v7KXz4YmkpWIvFX2JDyw=;
	b=PXzcnj90+OZ0C4nz04bqKplEPDe2JhtZOLQ92mY5WMSUfbMeE6DUUUUw0ra/gSCRSWN+Od
	SJPQOLqfllPpM1awadzeweZqebsYnisu13TFmgzdyyCpaUj+8VbTO5WCZ9NA9QvmWBxfxW
	CcuapYRcbYCOakp4aJjzACXxVG/RoKUvDFeRsMgpYkLdfWAv3F+dSRE6r5trHDMPnWGHxy
	MMop6RYViNqNQOlUNrk8pjas5n+4pl8HchwMqld6H242qnEsY8CuzO9XX9zdqTBkv9uUAL
	ULt/QBIccUAbiUi2h5gdAJUJEyqZSuG2rW1vRHdN5YTSKdzViq9znLsiVGRnog==
ARC-Authentication-Results: i=1;
	rspamd-5ffd6989c9-rtptl;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Attack-White: 2d7b2b2964c91d28_1763443643081_3621785217
X-MC-Loop-Signature: 1763443643081:4046718970
X-MC-Ingress-Time: 1763443643081
Received: from de-fra-smtpout10.hostinger.io (de-fra-smtpout10.hostinger.io
 [148.222.55.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.178.132 (trex/7.1.3);
	Tue, 18 Nov 2025 05:27:23 +0000
Received: from [IPV6:2001:861:4450:d360:58d4:4bb6:ecd1:1918] (unknown [IPv6:2001:861:4450:d360:58d4:4bb6:ecd1:1918])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d9Y5b6Rc0z418m;
	Tue, 18 Nov 2025 05:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763443636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=79QY2zbPjct8a5PYToQ8bQ7v7KXz4YmkpWIvFX2JDyw=;
	b=gILU6ZmT+LlDjvY6kAog4t0qNPWKuzZ+NdqRvWHtPOF0m0AzJOMw1gYv4dD7L4Fcw5knum
	19mlN1XfMjCKfIlixM+gM3P0OBgvLUytkDbPTritxuIEulCo13cZHlRWsDh7UBuFNYlE1V
	dh5nL1XcA5cyxP4mcv+gE4W7OXP+8I1TentKuWCcaE+Zvj4tMdZ6ODdllpFWme7LlQ5Hc3
	/hHfqQ2RHo9aMBGzYQ6xMlWGdi6c9Oc5/MEd+MKFcGitMpYLgzufPUFDPUwekCZ7juY0/E
	1gx/QyNhvsfjuMJtN899j0QdPZr66+NcxSfO4UEIA2PeWhjIESsod2ZmzRvcfA==
Message-ID: <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3 and 3S
To: Dragan Simic <dsimic@manjaro.org>
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Tue, 18 Nov 2025 05:27:15 +0000 (UTC)
X-CM-Envelope: MS4xfJLqo7/gRzsBM5gglqfBElMacoghunKCV7PiG5Q9KaWvdsmLLHWorQ2d9kWzZGsbDOU9m1P9AFVxV9VEIUi1iqL9dCaeyrAUZGAhTrTctD1GtA67LiRd jxpaDXYYYBiJvyPWDmwScz5KeIigzW1FBNT8q3VnRbqjuQ6KS8iCVTfTfgkneZLUXaV+GQ2FMJd/QD7Zs9cjO810THpJpK5t3KQJCy8sfYQfo1BRitTYjxJO msA8awJ16SzOZ+T/9YaznJtC9p5fWtEprqYBDFwLzAoCeCAPkMwEOx85WPCLonQx1s3/mIqcXjD5P+62YO31fo15cW821alZ5N1MQBtfMn2p1xQJN5E3yOCz n3DAJSzg27Ob/yZ+DiZmzMkLY+z45e6aboGSRZWrZdMjFsqPyheQrScEOWTR57xVon9FVOcRw3S9zGw1SnWAy/qzKBgxAqQ/Fm5nwWnt1PS6xe0sZvZMVPj/ 8krMIKj9jjvI7Gp+JmJlnr4lY9Oqy5mgmKyEdxA1rPYvxBp+JP33LTPkxdp1PWy9OLNnO6uPP1lSh/M6qspDnpNngDAOKki/eUGS7YNUmQkz1a76S7S1oq7/ EGubvqZvUWMZIlMSQ7zntiYvTPW1X7AD0oeyJm9iT9iRfhA5F4/H0WfXNko75EM30U4=
X-CM-Analysis: v=2.4 cv=Ceda56rl c=1 sm=1 tr=0 ts=691c03b4 a=RES+y31bSy/BcHStaSTKQg==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=lefHfciQTmdIgl6NApMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

Hi Dragan

On 11/15/25 01:52, Dragan Simic wrote:
> I'm sorry again for not mentioning it in my earlier responses,
> but shouldn't this addition be specified like below:
>
>       - description: Asus Tinker Board 3/3S
>         items:
>           - enum:
> 	   - asus,rk3566-tinker-board-3
>             - asus,rk3566-tinker-board-3s
>           - const: rockchip,rk3566
>
> ... because the introduced .dts files define the actual board DTs,
> by descending from the common .dtsi file, while they're compatible
> in the sense of the 3S board variant extending the 3 variant.

Actually, "make dtbs_check" fails if rk3566-tinker-board-3s.dts has:
compatible = "asus,rk3566-tinker-board-3s", 
"asus,rk3566-tinker-board-3", "rockchip,rk3566";

The failure is:
arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3s.dtb: / 
(asus,rk3566-tinker-board-3s): compatible: 'oneOf' conditional failed, 
one must be fixed:
     ['asus,rk3566-tinker-board-3s', 'asus,rk3566-tinker-board-3', 
'rockchip,rk3566'] is too long
     ['asus,rk3566-tinker-board-3s', 'asus,rk3566-tinker-board-3', 
'rockchip,rk3566'] is too short

If I understand correctly, to keep the rk3566-tinker-board-3s.dts file 
as it is, you need Asus Tinker Board 3 and 3S to have two different 
descriptions as in V2:

- description: Asus Tinker Board 3 items: - const: 
asus,rk3566-tinker-board-3 - const: rockchip,rk3566 - description: Asus 
Tinker Board 3S items: - const: asus,rk3566-tinker-board-3s - const: 
asus,rk3566-tinker-board-3 - const: rockchip,rk3566

The other solution is to remove the "asus,rk3566-tinker-board-3" 
compatible from rk3566-tinker-board-3s.dts, which is not a big deal in 
my opinion. In addition, if some code turns out to work only on 3 but 
not on 3S, though that's not expected if 3S is indeed a superset of 3, 
we won't be stuck.

I can submit a V3 along these lines.
Cheers
Michael.

-- 
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


