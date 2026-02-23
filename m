Return-Path: <devicetree+bounces-267279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM+YMB/6m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:56:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9711726DE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:56:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05132301A167
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E42A348477;
	Mon, 23 Feb 2026 06:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DkY4jUis";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DMybjEOR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61663451B5
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829777; cv=none; b=h+KAtIz1qVCw454iUoKFWzbIBO5ZpADRGNnxZay9lx7BKSNh1XV7pQvGzmRVqXjk3jZ5kPi7weXOk8Lf5fiqne53SL/6ImkeUq6Eot80kHaAMTj/m4k7QujN/AlnBDdAurvjG4WN8U/kuO2iyBtI97c0BQoEBG20/6zsm2GwbMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829777; c=relaxed/simple;
	bh=mkDR4OeLT5TKDRiAp9do8VKz/w5SpnyLF1bhRCG3lOA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EZsJ7nfdaAaxuyJMzj1gB9YQpHNE1nXuvbyu39qWb5S94IH7o74BoBZshKtDo7+zUucCtTN+FrmBE4sG+7UBSzNN8iim6+hVEfzlALJGU4jX+rqoAtQUIb3DzjVNHaRpkMWbT1vw7GT9FbMpZ8suS3cLzBHhHxbter5eVqbezQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DkY4jUis; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DMybjEOR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMM9ts2209592
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I08651udBny38XHqapXkmx
	5xZpxZ7PFZzX6KyGr7ROk=; b=DkY4jUisJM1eVdcdr066JC92JZL6a1be+ikPsS
	cC9WzgTHtS58hrdSuUvR9OQKLz5P9M+6C5/mnEaewlGs+04gl+dbYFqDIA+U/ICw
	0VxHJoejWHIilQYEJY+JBZV+clx0WwGVEkAvVhveuOO3RySTFHkk/ke3hfnBbetI
	H8grgtYOyH1ld+HPm35HRkWxdsBJuo1/TSxSbxnqci5LmUVthCr0V3L/0l8krLzi
	8QHv9bmcKdrJocdZxUR/cNxtupeE8pN8F5EwsnbafJPVLodSirDufRgSqEYWNpq4
	BwZ5qb5qvLvfv9yKjIRwlweih9QbfKsYOEMd8j/BtRBPxMew==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5v3up2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aae146bab0so43570605ad.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829774; x=1772434574; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I08651udBny38XHqapXkmx5xZpxZ7PFZzX6KyGr7ROk=;
        b=DMybjEORVoMVJTBPWItgr2aIDpXERgLFk4WNanJGD3UXhn+J7B4l5Yb+9wco7rGA06
         +pnxHOlXXLmmRxWqE58jZ3GsaHvJwnvxSicpqKoqWvB7H3F/IAzu9yTXb4485SVX5Fbr
         UQIgr48H8CGMJYZNIJRGhpap9ef4YDN74L1qZBZfmQs1uL9UrQ094CnqoyNEI6k2YDZZ
         SVxwUTsyT4w3iraaSXkh94CABNXw0NwSRhe4Cg2DTq9skKmOsa0vqF9Uj5YSgWfcERr1
         wfrlCr+3QKLxSp9Uo0MmT8mIsPI25nHYRqyfDwuVnYFPinIuHbFCvhzh1i/rTa1A7JvA
         hLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829774; x=1772434574;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I08651udBny38XHqapXkmx5xZpxZ7PFZzX6KyGr7ROk=;
        b=LWOdow/ulYywpbALyz2kBc331qluRQmT8xGG9ZWeJNkYYn3N8bsSbEWV/chHZ/kdkl
         Dm7qfTPRMSow4rrFzf3TmaimeceXdgAPnm28YomIwz/qrlz/70XjP/7caWU5Hyiy3F4X
         oUhM8/QHoa/lgs6PTBro3jNIKA/IGPFb0WILwur/Jg0XfQ9fc709qbYuTlSI+rKfmN+d
         5/xj9kIaRTvKgUdEUjD1KgZOqrJqcGjXhcWBq3ezdk4Nbatk+L1/lxXCbgKVX6czqaWl
         Y1VT6n5JsDJOq5poKJLyMCdK8zDFLKS0YSxzGl6TJQy3TcFeBY4VbAvioJNONKtyTjB1
         rHFg==
X-Forwarded-Encrypted: i=1; AJvYcCWaKBV2583T+qMxxKxjTf8DONljz6OwS54mBaOX2mV7nSi1sWIeiErVTCeVageYaeUzGYjxDN39ZpEx@vger.kernel.org
X-Gm-Message-State: AOJu0YzS4SOKNmRutWc5WjYtD0DWtHXQJlf9iRw2OKi1pS/yl2fI2YJp
	WB8agHkLZoBjVtOUgPKHGovxnl5PRrj22taOM5mqWoS35YMu1UnY4yv3ml/4W0Di84aA6fWkdJ4
	qYi+0aJP74gfUf6K/15Eaic50C6onwzsfN5MxgrdHKwwDEAjFxTyGnpQ5YUa0qwpV
X-Gm-Gg: ATEYQzzYyaqDZp4WGq3FYZvlyHrWG4MKD2yZpAagQqx932W+W+uwpJTQAGl5FylTpN9
	b/K/ziLeUo4JvY55Auvo47tIrZ7hWbb+n/dwdY/G6+Prt8cJBP+E6uko2MaQuc6s+ealPJ9AzYM
	H4pXLt5hq2+VxJPzjGQ+12WXLTD+3MCugzlG/LOXDDGwdpGPCyUnMUXrr85CtSYDfOm0PtFrSaB
	eFcRXDjc00KvDTK//dei6ufiNm/1Eu2XBH+njbVv91xgwKDyH8t3buO9sH07AeEPegPsHldeUuC
	LQ/8s4Gw3jOoPb6Z+ng3uq4dYo+x7JcvLwWgcWwr7sTphA2daCIbODFszU0PhPw0F1Hd9OlfLz7
	rAZVpqFi7DVAw5M3vn+Pw8G5iLz3hpegS0nngzspVr5O+dVS+RLKIzVbM24rzA76ZwM/7rMFjcg
	lHXhWRYxlZ/fhQ
X-Received: by 2002:a17:902:d4d2:b0:2a7:c2d5:bcd7 with SMTP id d9443c01a7336-2ad74464b22mr64330375ad.20.1771829773696;
        Sun, 22 Feb 2026 22:56:13 -0800 (PST)
X-Received: by 2002:a17:902:d4d2:b0:2a7:c2d5:bcd7 with SMTP id d9443c01a7336-2ad74464b22mr64330055ad.20.1771829773165;
        Sun, 22 Feb 2026 22:56:13 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f619f8sm62249225ad.36.2026.02.22.22.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:56:11 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v13 0/8] coresight: ctcu: Enable byte-cntr function for TMC
 ETR
Date: Mon, 23 Feb 2026 14:55:40 +0800
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO35m2kC/42NQQ6DIBREr2L+ut8gWGm76j0aF4DfSqLQApoa4
 91LPUE3k7xJ5s0GkYKlCLdig0CLjda7DJU4FWAG5Z6EtssFcMYbxrlAckqPhHpNhMalgL0PaJK
 Z8WpI1hephZIN5P0rUG8/h/zRZh5sTD6sx9dS/dp/rEuFDFnNey3OuhOS7j7G8j2r0fhpKnNAu
 +/7F0ZlBdPKAAAA
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829765; l=8063;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=mkDR4OeLT5TKDRiAp9do8VKz/w5SpnyLF1bhRCG3lOA=;
 b=WYb1evk0iS3z/l7ocdgjooJac7HINoqprcimLWz8/yP5qo0c7VVXv1+Ek9cQlJ3ijjzseCqce
 NVa2PUK9CswB/vOBYljUCz1i9C1ceWootlbZ6jiFbcuD6oaGHiq14Tl
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=YL6SCBGx c=1 sm=1 tr=0 ts=699bfa0e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=7CQSdrXTAAAA:8
 a=KKAkSRfTAAAA:8 a=QyXUC8HyAAAA:8 a=JfrnYn6hAAAA:8 a=3NKmYVG5dUn0lDVUWD4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
 a=a-qgeE7W1pNrGK8U0ZQC:22 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: zKSOiQS3AOk4eHI-XYK5nqBocN2bsTB0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OSBTYWx0ZWRfXzpny2BWwFHfh
 2QkoGcrVM4z1EulT1hqv85XDlNyZDqLcNvsDfqlL8Nf5yC13COdxqhqzag/WJ49xxd3B9V7rXOl
 K81sd4sHxXLYYbTtvRzp1EEE/Z0q04mo+BgY6mgudD3/SF/SlqbyoLs4VY0vfaJOdcA4n4hfc8u
 bnou1vSvnzeOyhAxBvDVc+VaftJ52d6JRR6RSijlm+As2zv6TfWeMzN+IAOZ6zRmfsYsbV5F87p
 NzAVO3FUaoGufEpHbCqiv9V8ppDY8bx763u9Qx7b+quIxL3wtk+C+9+7LInr5f3rhPRajOLwrPI
 AfWShV4WbM2Pcu/f9wMrqGmPv21VlaWi1CmEAukOUih9PQiF2fSqgJw5QZUu7Jbk1RGRxJm8E5B
 ss4phY0rRlB+4IWiAO7Syx5fRbNoMUaFkcF7Yd1MPpOhAnZvEFKHWaa/8MhOAEEEy7fs6tBBv11
 sQTwxcTqEqOQUoaJ3/A==
X-Proofpoint-GUID: zKSOiQS3AOk4eHI-XYK5nqBocN2bsTB0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230059
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267279-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3D9711726DE
X-Rspamd-Action: no action

The byte-cntr function provided by the CTCU device is used to count the
trace data entering the ETR. An interrupt is triggered if the data size
exceeds the threshold set in the BYTECNTRVAL register. The interrupt
handler counts the number of triggered interruptions.

Based on this concept, the irq_cnt can be used to determine whether
the etr_buf is full. The ETR device will be disabled when the active
etr_buf is nearly full or a timeout occurs. The nearly full buffer will
be switched to background after synced. A new buffer will be picked from
the etr_buf_list, then restart the ETR device.

The byte-cntr reading functions can access data from the synced and
deactivated buffer, transferring trace data from the etr_buf to userspace
without stopping the ETR device.

The byte-cntr read operation has integrated with the file node tmc_etr,
for example:
/dev/tmc_etr0
/dev/tmc_etr1

There are two scenarios for the tmc_etr file node with byte-cntr function:
1. BYTECNTRVAL register is configured and byte-cntr is enabled -> byte-cntr read
2. BYTECNTRVAL register is reset or byte-cntr is disabled -> original behavior

Shell commands to enable byte-cntr reading for etr0:
echo 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_threshold0
echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
echo 1 > /sys/bus/coresight/devices/etm0/enable_source
cat /dev/tmc_etr0

Reset the BYTECNTR register for etr0:
echo 0 > /sys/bus/coresight/devices/ctcu0/irq_threshold0

---
Changes in v13:
1. initilize the byte_cntr_data->raw_spin_lock before using.
2. replace kzalloc with kzalloc_obj.
Link to V12: https://lore.kernel.org/all/20260203-enable-byte-cntr-for-ctcu-v12-0-7bf81b86b70e@oss.qualcomm.com/

Changes in v12:
1. Add a new function for retrieving the CTCU's coresight_dev instead of
   refactor the existing function.
Link to v11: https://lore.kernel.org/r/20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com

Changes in v11:
1. Correct the description in patch1 for the function coresight_get_in_port.
2. Renaming the sysfs_ops to tmc_sysfs_ops per Suzuki's suggestion.
Link to v10: https://lore.kernel.org/r/20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com

Changes in v10:
1. fix a free memory issue that is reported by robot for patch 2.
Link to v9: https://lore.kernel.org/r/20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com

Changes in v9:
1. Drop the patch: add a new API to retrieve the helper device
2. Add a new patch to refactor the tmc_etr_get_catu_device function,
   making it generic to support all types of helper devices associated with ETR.
3. Optimizing the code for creating irq_threshold sysfs node.
4. Remove interrupt-name property and obtain the IRQ based on the
   in-port number.
Link to v8: https://lore.kernel.org/r/20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com

Changes in V8:
1. Optimizing the patch 1 and patch 2 according to Suzuki's comments.
2. Combine the patch 3 and patch 4 together.
3. Rename the interrupt-name to prevent confusion, for example:etr0->etrirq0.
Link to V7 - https://lore.kernel.org/all/20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com/

Changes in V7:
1. rebased on tag next-20251010
2. updated info for sysfs node document
Link to V6 - https://lore.kernel.org/all/20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com/

Changes in V6:
1. rebased on next-20250905.
2. fixed the issue that the dtsi file has re-named from sa8775p.dtsi to
   lemans.dtsi.
3. fixed some minor issues about comments.
Link to V5 - https://lore.kernel.org/all/20250812083731.549-1-jie.gan@oss.qualcomm.com/

Changes in V5:
1. Add Mike's reviewed-by tag for patchset 1,2,5.
2. Remove the function pointer added to helper_ops according to Mike's
   comment, it also results the patchset has been removed.
3. Optimizing the paired create/clean functions for etr_buf_list.
4. Remove the unneeded parameter "reading" from the etr_buf_node.
Link to V4 - https://lore.kernel.org/all/20250725100806.1157-1-jie.gan@oss.qualcomm.com/

Changes in V4:
1. Rename the function to coresight_get_in_port_dest regarding to Mike's
comment (patch 1/10).
2. Add lock to protect the connections regarding to Mike's comment
(patch 2/10).
3. Move all byte-cntr functions to coresight-ctcu-byte-cntr file.
4. Add tmc_read_ops to wrap all read operations for TMC device.
5. Add a function in helper_ops to check whether the byte-cntr is
enabkled.
6. Call byte-cntr's read_ops if byte-cntr is enabled when reading data
from the sysfs node.
Link to V3 resend - https://lore.kernel.org/all/20250714063109.591-1-jie.gan@oss.qualcomm.com/

Changes in V3 resend:
1. rebased on next-20250711.
Link to V3 - https://lore.kernel.org/all/20250624060438.7469-1-jie.gan@oss.qualcomm.com/

Changes in V3:
1. The previous solution has been deprecated.
2. Add a etr_buf_list to manage allcated etr buffers.
3. Add a logic to switch buffer for ETR.
4. Add read functions to read trace data from synced etr buffer.
Link to V2 - https://lore.kernel.org/all/20250410013330.3609482-1-jie.gan@oss.qualcomm.com/

Changes in V2:
1. Removed the independent file node /dev/byte_cntr.
2. Integrated the byte-cntr's file operations with current ETR file
   node.
3. Optimized the driver code of the CTCU that associated with byte-cntr.
4. Add kernel document for the export API tmc_etr_get_rwp_offset.
5. Optimized the way to read the rwp_offset according to Mike's
   suggestion.
6. Removed the dependency of the dts patch.
Link to V1 - https://lore.kernel.org/all/20250310090407.2069489-1-quic_jiegan@quicinc.com/

To: Suzuki K Poulose <suzuki.poulose@arm.com>
To: Mike Leach <Mike.Leach@arm.com>
To: James Clark <james.clark@linaro.org>
To: Alexander Shishkin <alexander.shishkin@linux.intel.com>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
To: Mao Jinlong <jinlong.mao@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>

---
Jie Gan (8):
      coresight: core: Refactoring ctcu_get_active_port and make it generic
      coresight: tmc: add create/clean functions for etr_buf_list
      coresight: tmc: Introduce tmc_sysfs_ops to wrap sysfs read operations
      coresight: etr: add a new function to retrieve the CTCU device
      dt-bindings: arm: add an interrupt property for Coresight CTCU
      coresight: ctcu: enable byte-cntr for TMC ETR devices
      coresight: tmc: integrate byte-cntr's sysfs_ops with tmc sysfs file_ops
      arm64: dts: qcom: lemans: add interrupts to CTCU device

 .../ABI/testing/sysfs-bus-coresight-devices-ctcu   |   8 +
 .../bindings/arm/qcom,coresight-ctcu.yaml          |  10 +
 arch/arm64/boot/dts/qcom/lemans.dtsi               |   3 +
 drivers/hwtracing/coresight/Makefile               |   2 +-
 drivers/hwtracing/coresight/coresight-core.c       |  24 ++
 .../hwtracing/coresight/coresight-ctcu-byte-cntr.c | 367 +++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-ctcu-core.c  | 122 +++++--
 drivers/hwtracing/coresight/coresight-ctcu.h       |  77 ++++-
 drivers/hwtracing/coresight/coresight-priv.h       |   2 +
 drivers/hwtracing/coresight/coresight-tmc-core.c   | 103 ++++--
 drivers/hwtracing/coresight/coresight-tmc-etr.c    | 136 ++++++++
 drivers/hwtracing/coresight/coresight-tmc.h        |  36 ++
 12 files changed, 830 insertions(+), 60 deletions(-)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260223-enable-byte-cntr-for-ctcu-9ce7487b3a76

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


