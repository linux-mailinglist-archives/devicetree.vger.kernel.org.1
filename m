Return-Path: <devicetree+bounces-259720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBaSF7o1eGl+owEAu9opvQ
	(envelope-from <devicetree+bounces-259720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:49:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B62938FBAC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 830F430347A5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4646313E39;
	Tue, 27 Jan 2026 03:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GAd+/aut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8DC313E01
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769485751; cv=none; b=mI7biovMIxAWkf5CF7hBeyTfltpcKCZ5vZp0GLMnNC/X2hGejeCvsGg7xW4D0V6dCA3IsR2jYPNHYqnAkJcQDNIna4C/+pIY2Kt+K4muVE34kyeUATUfIv+7/zeA6NxKyCxawpsOuB7gMIoziFN1jTunGnpUdYix7VWKEyDdt+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769485751; c=relaxed/simple;
	bh=gdSVIgxtZOfQL3CUqhWEGxBtle7sZPvAc2RRxuwck+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dJcEgBb/UhagXgeS0qjU9pDxEbDOm4wcMpRQFiNlxuVZoG7QV4x0GzhsjHkAwNgXrYfIbOXClTmEDeZ/cFORv/+85vhZvO6LHDPHbrOFOhaX6N59QaDRgwyqIeasSP9Bal/kb0EkVW4wLLfB/WlT9whpJuh/UJDpwM9a06IoBXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GAd+/aut; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-29f102b013fso47438715ad.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769485749; x=1770090549; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yb1Nq1niVrBkwwiP9/q6su3kaXasPkEK3PLxjn0erUA=;
        b=GAd+/autM/X0pSrR0X56aq99r2/6tuYtd7iKsWd7sJ40ZDJvdlHodmIHH/C7/I33n0
         691Qvy7nPeC7I2UN+nyhGDAuOocIz7NmfJRIrFYEN3MUW7FbqgemWXlyS5naZxBbDUxv
         C4Xgg55sHRTvo2G92d+WLOEbrvJP/YQgl2EcuqmvTU7zaNw3rc12eXwdjOh2cDoY3wuM
         iwiLH8CmYOjT5+VcbQAx3roX9rNfvOK+INe5r/eAT2WN+eKWbyEh+9+LZr2WcGSiDZJW
         Xn8qP3ctxwye/OSdu5qIAqrLQiL3kr4N90onsi+dk+6AaZMslSg1HSnn+VG7Y/Mackzj
         y+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769485749; x=1770090549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yb1Nq1niVrBkwwiP9/q6su3kaXasPkEK3PLxjn0erUA=;
        b=b50V4c1IDnmAj8s6YQI778C9C8vGW2Int+N78CKF5X8h6spZ/UBwnDMYoJYeXGizeI
         3Y2G0BaUqG2jjDHJFZHHYKZrAW5piuUv3rDkrvf2rCNkO+51kWvgtpkCuI2n2ksOPo9V
         o5q4ZPBzsoVaMB0eHGUHZQQ9A9qfyeN+0EF9r18lpVi8ET1swx62ruuzHNioVWpEhW9z
         AqFFbt//3c+eZ2RtXX1/wPLUp3wQZVkkVor+vfOkD4Sf6oNPVda/6feRREKmxQBL68By
         8f5B2L7x43O20lgH8sVzaHRqNaICBNIU17SPaboafs8cHJrFlRo3+PJlsnIcfIUcNA+e
         NR3A==
X-Forwarded-Encrypted: i=1; AJvYcCWqyeC3C5gIneE7AYRL7/EIWiUr6VfN8UQ/eeQHfSVSjJtNEiGEVvfSKWmS9UgJhebV2MsFLMyVba9k@vger.kernel.org
X-Gm-Message-State: AOJu0YzpZHGRYlMNIR7vCFFIFm6cRsdfeRfHsPVlRZWnN7gk2itIdVUz
	meYHMAa9u7Zncw1vrLDoUUfr9Df4QZx2hj5AMD055ndeOQtMqQhSYpqF
X-Gm-Gg: AZuq6aKUUpu3AH0PCnQYUmWul3sjUw5WvxqGEnPtSjBS/hDvy319f/mrtDeMBRQOAnf
	nxVQmzdhyGhnD7h/KVGYpHxVgYSzBeh0bsUxyWsGLSzbcjzUV9K39SNdSBEI16ZWisl7hN19gDu
	Dvj7tTgn3+uBs+48XIAn+TIGnZGnHjQDFQA4bgiLb9+ullasmreW/jpZUv4A+4xYm2m6n210DJT
	D3c6lec8aL8mSmKVsBk6Lj6StI6WdRh4E2niZbvnwEZv0XEHyHo9dgl2vCmFVuKDYyJqX/CSXB3
	38jgFe32KkNrVl5QQ1wvQUjCJ3hTFshoXEuL+FXkmjOglqUBLl2v27lJ/ODM6sqz79oR0leRukN
	B4lwi08Bg0Jeodx5puoB12Eae40vGFzeL5zUVIYdugMMHP3DviAwtiB0JyXaVP6hct68CqTZvOD
	QTRQC7d5he4mFcUVIvbjroX0ZHG4X0FCwRFGqUZiwE5Z6C0ItfR8iH70JXqxeHLTaY
X-Received: by 2002:a17:903:2446:b0:2a7:5a42:fb5a with SMTP id d9443c01a7336-2a870df8badmr4535355ad.55.1769485749126;
        Mon, 26 Jan 2026 19:49:09 -0800 (PST)
Received: from [192.168.0.102] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f978c7sm102191145ad.65.2026.01.26.19.49.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 19:49:08 -0800 (PST)
Message-ID: <036b4874-a7d3-4523-bf1f-3256bbef64db@gmail.com>
Date: Tue, 27 Jan 2026 11:49:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: display: nuvoton: add MA35D1 DCU binding
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, schung@nuvoton.com, tzimmermann@suse.de,
 devicetree@vger.kernel.org, conor+dt@kernel.org, ychuang3@nuvoton.com,
 linux-arm-kernel@lists.infradead.org, maarten.lankhorst@linux.intel.com,
 yclu4@nuvoton.com, airlied@gmail.com, dri-devel@lists.freedesktop.org,
 mripard@kernel.org, simona@ffwll.ch, krzk+dt@kernel.org
References: <20260126085727.2568958-1-a0987203069@gmail.com>
 <20260126085727.2568958-2-a0987203069@gmail.com>
 <176942345650.1493690.6680592088886642042.robh@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <176942345650.1493690.6680592088886642042.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259720-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,nuvoton.com,suse.de,kernel.org,lists.infradead.org,linux.intel.com,gmail.com,lists.freedesktop.org,ffwll.ch];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,2.102.81.160:email]
X-Rspamd-Queue-Id: B62938FBAC
X-Rspamd-Action: no action


On 1/26/2026 6:30 PM, Rob Herring (Arm) wrote:
> On Mon, 26 Jan 2026 16:57:25 +0800, Joey Lu wrote:
>> Add Device Tree binding documentation for the Display Control
>> Unit (DCU) found in Nuvoton MA35D1 SoCs.
>>
>> The DCU is a DPI-based display controller supporting RGB output
>> with optional external bridges or panels.
>>
>> Signed-off-by: Joey Lu <a0987203069@gmail.com>
>> ---
>>   .../bindings/display/nuvoton,ma35d1-dcu.yaml  | 74 +++++++++++++++++++
>>   1 file changed, 74 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
>>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.example.dtb: /example-0/display@40260000: failed to match any schema with compatible: ['nuvoton,ma35d1-drm']
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.kernel.org/project/devicetree/patch/20260126085727.2568958-2-a0987203069@gmail.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

Thanks, I'll fix the YAML binding issues in the next revision.

Joey


