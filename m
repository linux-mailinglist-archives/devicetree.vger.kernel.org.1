Return-Path: <devicetree+bounces-274060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA4zIMRisWnQugIAu9opvQ
	(envelope-from <devicetree+bounces-274060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:40:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F83263B37
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEAFB303B7E5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F09359A96;
	Wed, 11 Mar 2026 12:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JddLbFz/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="keu9OWZo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C793931F9B9
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232813; cv=none; b=q+A14TTh9ty8LSUh2Sy0S1ThhkViLBYPiDFvyQXiylOKu1wr0VkEGEYKIsa+UDAhNoI11Wd1kA8Z9rVUwd1DkbRC0nzVsb/LySP7bVDPstlV9dlMPHhcudnj3VwLvs0RNYvVnJutcQYluuzamuy/vNAp/VDyZ1DwZPFSBVusFPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232813; c=relaxed/simple;
	bh=q1phuj9nSiqlXFs59n/SUidEu6KkKZUmRxu/IEaVcj8=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=Ut9OS5KgyclaqCtUj41i5U/g0PRyfxXGv7Kn3lL6jmaFEm9Gvbm9dkrh9xqxTk8EW3RSYY5Vez5+NecgPgyPxD1Qn1U/9rS4J8rFaHriunhRQWc0RF2ifXbW5/iV/SugbgKspPw7v9kz5f+uICQ61+0S3WZqGn8I2puyyCslIIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JddLbFz/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=keu9OWZo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9Yxr92179278
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:40:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=hYqck+gSoswXIm7KvNxr8d
	aYoISybhT0tfxsMu+V4hE=; b=JddLbFz/8RRlopHJoleSOh11tNKXHR3II7IH0Q
	B6s7QiovXEbjX517YuRHqalK+k1si59Xh8S2CcUX2X/dipRmHx0tIp9+jRzLbt+l
	ckwUO93kzMzzaWVe1u1EyD8RJh/oiULFhRJtjj+c0j3G0SzntplQc9NxfOPafMt6
	9gSS1kMIyeEbPDz6XODhFU15jNMq0uPJ+i9WMmQ0JuZ2DQQitMGO3SHRU5KOdAuI
	KItFcnIS6X5rPjwVRR4XREZccWvTny/BWApMQzJBbltULk8bFRVoqL2EkkVClxkm
	SoEoGT079unofQ0de85ucFKvl9u18Hlcl59FHgZX3piQGiHA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqvsuhp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:40:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7a2c535eso90155485a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773232811; x=1773837611; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYqck+gSoswXIm7KvNxr8daYoISybhT0tfxsMu+V4hE=;
        b=keu9OWZoX8d6pE5FgmI1eyImsys67HFT+j02nWo05FPDxBoRz6qEfHGOLizvCQsjDM
         zK7cWznBxR8e7GmVrylphcHugA8hs4RbNtzk02rkFIB0i5XgaEjFA5DkHX2nZmRAbT51
         IDcaHRMqJH8cbKJdhEvlrExs5kSlNVlNELoAbOOYpaStk9QO3/iIUviolp18fJq5fBoZ
         LbnlvECrp94IwUg/ONN8FAgSqJvqw+D/yZVVpll3W+SgtY7UKkAWGNsXasiJmKQkfXUF
         KrdwVwGIlxijSlRr23KWKGLnFpWCT2ZhV/0yQIq/6lvGuHxtsnqTZPJEWBlvb+KCpzni
         1RCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773232811; x=1773837611;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hYqck+gSoswXIm7KvNxr8daYoISybhT0tfxsMu+V4hE=;
        b=Rc825oyWWpaAt6HMmanQMM3vE0RbiXx2svuzu7tPCW4NQMbxakoLTCFaRMQgk36Kul
         gcj2Um/+4FzSW1weSFrgHpANO1EVAzCtF9HlZpnftTnhX0qqmluyf1gWPbDZYtEVs1ig
         NZK52VANT3++PY+XTIFdfFp5tFLgHJFMDFNo+XiF70BVtNRfaEt1QKjphZCkgVtXSOnN
         QObmH3djFgN6GqMIm86umu9/Gu+66jCz9CEGLCct/qIgqnCQcnO34rNxQIQvpDdGTv5e
         Y7vMLNah5y45zP3BMNe7E3+uydt5+lYFHlpAM3vPI89psnVjYYTTbgvhX6KZVnlh34kZ
         qdhg==
X-Forwarded-Encrypted: i=1; AJvYcCWRoGdKc6Kc3XKX5HOw8CJDWLeQ9DsyoXcH9O6q//QLC6c6Jfh34Wz8X/ReunHNhQpZGJHNdjSnrhFi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4fS6gg/c60r8xUQHMCnJ1jb8Y5fcVxhNizJ4J9OIgw0y+4NiP
	OSTaVhugMbdIkl1KZkPOV2B57g+WAIDh/T6i22EWNigBb6ZeaIOkuxXKob010WG6mSJUSh4W50F
	NiYv7Yy/QKgGHsuw1wLFKJdJwAV7Md2FQ4ixBI5x/aoaEAECrd2Br0DGIElcoxuzl
X-Gm-Gg: ATEYQzw9B9WD2KZ9h20pc/94ff3dIc/WyrBVLHzf70FnBH7J+sgLd4gC/xRP7tsxjGC
	vINV7CP7g/QkcHfGawIk9lIn4j4qJVCFyhwtV49tr8ivWkyj9QGZSCYGxfXdYQfx/uaHkOhBYQY
	1SpUb3XKt4koogAPlexjBTjil3foL6OIoj+xKyHDp0NcJDzo3dwGgV1zaEXXs30VaKPxY5gfxF9
	1F5WnDlgHusrjbL599Dop2QWO6qh8V+yq2dlvPOFk0Ld5Ioi2WZALn4aMpn52cySfReRuRgQiUJ
	XvzublUQtNTzGCABjARmdf26X86Rmrfxck6Iv7luJMXbV2cAeDAzcFRKmC2sxBGnve77YvaByz7
	vT/DLaC27FMdRAQDO7EsmRvTGUf94e/sxrtHYwoqA6YC+A6mJYzWsP58udAu9Vy7w5fe+LcVS7C
	V/8Ys=
X-Received: by 2002:a05:620a:4707:b0:8c6:a719:d16f with SMTP id af79cd13be357-8cda194fb1emr240816485a.4.1773232810892;
        Wed, 11 Mar 2026 05:40:10 -0700 (PDT)
X-Received: by 2002:a05:620a:4707:b0:8c6:a719:d16f with SMTP id af79cd13be357-8cda194fb1emr240812685a.4.1773232810252;
        Wed, 11 Mar 2026 05:40:10 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97313230desm40306266b.26.2026.03.11.05.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 05:40:09 -0700 (PDT)
Message-ID: <8fabc049-7fdf-498a-a3ef-6f2570d510c8@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 13:40:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Johan Hovold <johan@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: grumpy DWC3+UCSI, usb-role-switch semantics
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEwNyBTYWx0ZWRfXyUSCM7sgvoto
 mcSiu1sFhFmWr8Rp/DF5IxzS9VokVT8tbEKyN1ldSrtubdPPUhQ8Yyg2+Cil6LxYhKoDMWgvTWX
 ajOSNirYInjBE5U9rCPYV4N5IRoXVVBOQZevdTc3gg3Eh/dLbJ0qUwSEyQFl1gEv6acorjVnLZc
 nhU58wW0w/7UJtvhtev8jo7l/kBs+ah8L2f18rizRb6UB4lDbZEyT5p4+XHjj1xOHjt4gruT98C
 amXIKgNrcFJ22uND3BbxjEYAWtuKCZ5wPZbV8/DLmTZo9zXH9UQD3ofHAdHHx1WqLp2TSD68Z1m
 RqCXEgm+Lb478GRb3OtzkLFuiAXg8yRXxVkjBYaibSRL36Yjsn8xcF9HPMWT55DuawZPb5MPnoy
 eXdePdpFgLdqMDEm18HOOkaz3/M5og/Ar3Ydyv3BWUqW54C7TaUNpASpvQctYKAjmCbcHkLojaJ
 2KWQ17KMfKcmtvDt+Ag==
X-Proofpoint-ORIG-GUID: 6oqf-7gnLrGCA9mVs6KUqXOrbFIZYjm0
X-Authority-Analysis: v=2.4 cv=Lo2fC3dc c=1 sm=1 tr=0 ts=69b162ab cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8 a=9NdRVNC825nQ0Wb3IxUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-GUID: 6oqf-7gnLrGCA9mVs6KUqXOrbFIZYjm0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110107
X-Rspamd-Queue-Id: D9F83263B37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274060-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Hi,

The description for the usb-role-switch property (usb-drd.yaml) states:

  Indicates that the device is capable of assigning the USB data role
  (USB host or USB device) for a given USB connector, such as Type-C,
  Type-B(micro). See connector/usb-connector.yaml.

That to me sounds like a description of the capability of the on-SoC
controller (i.e. should/could be set regardless of device specifics),
however in this configuration:

&usb {
	dr_mode = "host";
	usb-role-switch;
};

the role switch device is never registered on devices with a DWC3
controller, since that's handled in dwc3_drd_init(), which is only called
if dr_mode = "otg" (or absent since otg is the default).


This notably causes:

ucsi_init()
 -> ucsi_register_port()
    -> fwnode_usb_role_switch_get()

to loop in -EPROBE_DEFER, since the 'usb-role-switch' property is present
on the connected DWC3 core, but the rolesw device is never registered.

Now, it seems like different drivers do this differently, e.g. DWC2 seems
to always register a rolesw.


How should we tackle this?

FWIW I'd prefer (for maintainability reasons) to not have to set/remove
'usb-role-switch' separately for each board, depending on whether whatever is
at the other end of the USB cables is rolesw-capable (since again, the controller
itself is), but if we go that route, I'd request that we explicitly forbid the
combination of usb-role-switch && dr_mode=host/peripheral in bindings, so that
the computer yells at me if I overlook that

Konrad

P.S. this is the reason behind the issue we encountered at:
https://lore.kernel.org/linux-arm-msm/Z1gbyXk-SktGjL6-@hovoldconsulting.com/

