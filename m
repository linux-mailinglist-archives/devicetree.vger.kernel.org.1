Return-Path: <devicetree+bounces-259906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AZTCIC+eGn6sgEAu9opvQ
	(envelope-from <devicetree+bounces-259906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:32:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAE094F08
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8693A30484C6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD7B220F21;
	Tue, 27 Jan 2026 13:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ouiTjnBC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZBtaKVaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8105F1F30C3
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769520652; cv=none; b=EdIWmpB30CAu+M3usX3rSpNfLhJIpyHjJluAcxDN7ZP5wknLG4vx/sudYQZDwzchUql4k6/lYqxwybY3kXN9q9tottUxOlpHRoKXwwrz74tqiN/yKv9vYFKZP4V3bCOyU4xz7V9dzwbFy6BcEFLvfSkfdXE1yvl2M5Ln30jHTx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769520652; c=relaxed/simple;
	bh=nLyGeY+mrXwCdT6qDno9ezbqtQHqV6B20cxxSNBjl7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ipjgY6xs0XWJOW/M+xTgHdLBlW5H1z31rCJGVcEXfafzrt/j+3agZp4XhV7XGe0MbpxvZSdRNFw3B1iximATRwzWqSa5a0RC3+SM4gqe15Hwc1ijTQ8oncvDNxJ95diDcbTmOLboLxFRnRMXsfh1SKBUWl3Wcvi/STwIiIMECi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ouiTjnBC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZBtaKVaT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RBwISb1792658
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:30:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EbeBzapWrYk4XxUN8tlPlNoAxeaRaczXIGXzcY69ylM=; b=ouiTjnBCRlgznq/G
	3NLafsMp7UV6lpxVFymJ8a5zilid5+9WdSugY9/XzATzwifryEiQDITxLCOO0zzO
	Z3d6uChuEf5N0znZ6+AbXVefXPXo3xGmJEClNR9VtvuOJVAZ7g21DjBaTyzJjp6v
	NuM5drA/8C8AemkUYPmpfchKknKlZ7eIdscjJPkmgJoOkRd7RcOi1tl2Df/rZqdN
	cFGxAWM09PvUgTWtCSAz1c56PrRtZh4OvtQbGxd2O+1eHrkG0sMYW6/WuOGV8Si6
	kqb9Jn2UjX1VKSeD67uce3kmfe5rHJPMBjVA68/Q1KBghREG3OVy/5BWhzLgtau7
	80DrcQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93jpu9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:30:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c536c9d2f7so186837385a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769520650; x=1770125450; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EbeBzapWrYk4XxUN8tlPlNoAxeaRaczXIGXzcY69ylM=;
        b=ZBtaKVaTDiFusVA99PGgRKyEwAC3xRMNNGpJaQpZnSnuM9zTP3swuwdA2nzJg2xF1e
         1YsZrnH8VRHqkpLjIr37oC/ch+5y9qChmAen0In5rKgYPwXciDYB2FHvxVcOIy1y6qYv
         84jsFDmEAaT6V5lnVbQ4ZcLUpoOzwmxL4Q+TFskWMfLsXk5PXQGJdEsVi1fbXlNcuOL/
         B/HWgvFTHiNxtWfNDj5OekiQg0m0b5XGlkBujKy/RryOXw56B7uovTWgim6Xgb3U/5wp
         jnESftJWd979CdwRHkNiswPlnJrmQlz/dGh0gTkJNgYy0J65cQ934S3LjbkoW1Pm6QVs
         burQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769520650; x=1770125450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EbeBzapWrYk4XxUN8tlPlNoAxeaRaczXIGXzcY69ylM=;
        b=jzJyLlKhcdFH6xfNPSaZrDcClSn8uT5SyvAnvY08jPGyCmq6T434EmE6gaoq5DbNx5
         nhAareNTsgIYoqHNnOnwpLjsZ+8hGjsUnvOY67V/Qu3YhDL7XbKdJ9WpPYlfiRK97Ue8
         i33syfaqPmC44+cP4NZ/LdcIA0VeGivJ+PIKkknSmvtbmZ5gfA65FZGiJtJ6yACHOSG2
         PcpqLkgYTPNOVIGg0kxFS5ZOBLHr3spZSKAuEUhWpcJQfiWgEGvrUBqVbA3vnq34XTw/
         YofRt5+U9IiGtraEaQb7aIYxunvHSy2zY3U3NW/6KqNRdXihX6cDr7KdpIllnqBsP27f
         RxzA==
X-Forwarded-Encrypted: i=1; AJvYcCVF9qm2M66vSsG4VXjwQdYmALVUJzfRWEtP1n+IO4BiaDDclYgpUEAAL6VfHltiHKTwMxL8slJ5Ip3g@vger.kernel.org
X-Gm-Message-State: AOJu0YwPboal4n6WQupCRIem+zC031fw11Hwa1SZ1j8DxJpbfZCaTnrY
	DZDIQ36wHXP8/MZRa+qHViZ4pF+BbFF2rYeIYOZuKIexWUZLwKCyoCzZcH6HFOHcrvNY9S/AZVP
	PMMowYHpKi4zVQQ53gcmgRmTiXEz+OCdj9jXg+72+Pmbft07DuOYG9lXzi8uyD8In
X-Gm-Gg: AZuq6aJ/hYruBA6mfsslIDhTwLastTbSa5lE+orvDskLOg/hxlrvo+8cXUfKpOHSttj
	sN93VfSYV058r///JZX8cwF80leZn0wocUaelL6owBeSh6zTZgFENcisqYU1SV+e7Vcg7G+qJC1
	XP2KEK3zPmyuLg3RCkxH1U9SCGSSoPqe4vXXoOYupvI4EiE3uLWnR3VvBl4KSXY3eSEs45L/ZpJ
	i66zUPr0AbIGN4ngaUWNckfgla9HW/4KYrFZGoEgHj+NrLqWXO9xgdZinHVe7ffCnzV4tb0XwBN
	LseIwkQne+smYacd3t2A8+ia846WEL9p5OoVlQGeuc1vQGM2TUzFtbfCSQVBfuDajAJhFD8lb7b
	XWi0FkxzzOTG2wkh9l4pWU/TBQADGW7tTq4B43KpRgWBoNNJjRTMWIGQET+dN1iRA2a4=
X-Received: by 2002:a05:620a:2984:b0:8b2:df32:b900 with SMTP id af79cd13be357-8c70b91c60amr137979185a.4.1769520649383;
        Tue, 27 Jan 2026 05:30:49 -0800 (PST)
X-Received: by 2002:a05:620a:2984:b0:8b2:df32:b900 with SMTP id af79cd13be357-8c70b91c60amr137975085a.4.1769520648739;
        Tue, 27 Jan 2026 05:30:48 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b965d98sm6610869a12.32.2026.01.27.05.30.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 05:30:47 -0800 (PST)
Message-ID: <537a8bcd-360b-41a3-9a3b-58d6f7e4f0e2@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:30:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] usb: misc: qcom_eud: add sysfs attribute for port
 selection
To: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
 <20260116232106.2234978-3-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116232106.2234978-3-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwOSBTYWx0ZWRfX39564QM9AWeb
 4rE8QE/LCfOj5GnJ9jijcaBZPDoxZYFGiMMPr+WPZhDVe2cZshRpJAccsLesaLbA3cHnUZjsuFn
 NgBeFrzP4nOQxy//X3dVe7gmwuahKiNvu/PZpyiiAlaEVmRI6iAM03cAs0YM4AXExsTX9OtXkl6
 mImcHu4hppAX2OkL+aY2Wz6W3IpzDrUrMceJbsyQSJE6nqsGS9HI9QUsf7eCUy+GkRljPHr1Phg
 xCOqkqv3Go6BL69HmyKOEakBaaVfR3TsSOkXHZJJLs8jENy8l9OHZbvt+Cnbq8Juca1Tgq47uf7
 78ooqQZQUXRD9cYaEfoO4d5cfQLbCRKF6goAIPLgO/viEeBpFG45Ed7ZoEGsZU9XcqxfS49PbY9
 IsYUj+v4weMm3/Y8Sz5VlLmXJtZWNqG75QfOQUmQB2wDoXT3lnzQKPrYitQvWUmDltG2+Jlu3KM
 JiyljimiI47UKGhHddg==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978be0a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Mi7szx8wPLqchxB2UhAA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: -5tOHW4gSuzqRRyGM2U9nHDyozS8rSSF
X-Proofpoint-GUID: -5tOHW4gSuzqRRyGM2U9nHDyozS8rSSF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270109
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
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259906-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8FAE094F08
X-Rspamd-Action: no action

On 1/17/26 12:20 AM, Elson Serrao wrote:
> EUD can be mapped to either the primary USB port or the secondary USB port
> depending on the value of the EUD_PORT_SEL register. Add a 'port' sysfs
> attribute to allow userspace to select which port EUD should operate on
> and update the ABI documentation. This is needed for systems with dual
> USB ports where EUD needs to be accessible on either port depending on the
> system configuration and use case.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

