Return-Path: <devicetree+bounces-4703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC177B37EF
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 80C76286865
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A3D6589D;
	Fri, 29 Sep 2023 16:28:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5E6521DA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:28:55 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE1DBE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:28:53 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-522bd411679so17917077a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696004932; x=1696609732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X8mQZtTVeZ33y1fcK4D+RrR6+JupRwQI35yzIof0Q8A=;
        b=yoo8Sswt1id8qNkT6u4hAjpNQVuUQZXh4WhGsrlZNUdsiVIiHoJ2IAbSUvPrfaqUA+
         bIlPNzupammYeZwe/P/nJKCYK/5T9Vs8Vw55BgbIjNBEqjIDvC9hghgTFwUYLqrn6+wc
         9uOxHSepwxFwyDExvUrxRLciDcvMTxiBu+/mH1yd9FZs+qFtvh5C/eESv6I1pSa6i5T9
         QL9YL8g0bwDOi+QOWSaT5z0WGHK2cTmR/6A87cUQO3bZI0ifhGhtlBaWTYyvz3RZWBEM
         wqXl0W26kkHvEvgBIKbCmMnLSjBseo4hHFqWGu3g0kHWqzJHte+tmyM9Jio6hsyaakoB
         9kGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696004932; x=1696609732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X8mQZtTVeZ33y1fcK4D+RrR6+JupRwQI35yzIof0Q8A=;
        b=Flvz1u2Zhm6CbsTyZE3xc8cUnPUXrAROwGYI3zUDB/TNLZx1A3EVGorHO6TXb6P+SY
         wyVZsA/P2Hlr2LOHLMYH1OVcfxqbUqw77ShKvzHvzZM+s1eUD2tmVos00QlfJuBT1aUl
         OcPajgRVFAOcbD0Woo2agw9WWlEKdCO1q5LgMamFUKqWWFpHNYv61/B8qybm6t9PDUNg
         z1gAaIrP22Peun/bsuJWHxRINMNYOapvb8u2c8JE75z0AEXJbEpXp2PJRKMJfR7JERJY
         XyT0Gu0YfPRBL8vGorL0oHSqGRl9xp5A8Z2kw+cN57RJ4OKMb8K4FtWcnS216E1t8nAy
         gXSw==
X-Gm-Message-State: AOJu0YxLJeSAQpFRTb6Uzytl6Wga88qRMl4HaMs2cPezceSDbPUmvQ9T
	pXAuZ1R6HqI2PxoMKbz9uBd0dg==
X-Google-Smtp-Source: AGHT+IGzYhpFXCR0EPzBGhIzwNmt9lRnwwgeUPiOpbQaT6s0SYUQITM2AREylz2cWxOB58g0zLCQMg==
X-Received: by 2002:a17:906:319a:b0:9a9:f17e:412f with SMTP id 26-20020a170906319a00b009a9f17e412fmr4717755ejy.50.1696004931898;
        Fri, 29 Sep 2023 09:28:51 -0700 (PDT)
Received: from [192.168.0.219] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id hs35-20020a1709073ea300b009b28ad521f4sm7253315ejc.4.2023.09.29.09.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 09:28:51 -0700 (PDT)
Message-ID: <30aa40c9-b63a-093c-954d-86e4bb232431@linaro.org>
Date: Fri, 29 Sep 2023 18:28:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/4] thermal: qcom: add qmi-cooling driver
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bhupesh Sharma <bhupesh.linux@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, Manivannan Sadhasivam
 <mani@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
 <20230905-caleb-qmi_cooling-v1-3-5aa39d4164a7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230905-caleb-qmi_cooling-v1-3-5aa39d4164a7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/23 18:16, Caleb Connolly wrote:
> The Thermal Mitigation Device (TMD) service exposes various platform
> specific thermal mitigations available on remote subsystems (ie the
> modem, adsp, cdsp, and sdsp). The service is exposed via the QMI messaging
> interface, usually over the QRTR transport.
> 
> These controls affect things like the power limits of the modem power
> amplifier and cpu core, skin temperature mitigations, as well as rail
> voltage restrictions under cold conditions.
> 
> Each remote subsystem has its own TMD instance, where each child node
> represents a single thermal control.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
[...]

> +/* Notify the remote subsystem of the requested cooling state */
> +static int qmi_tmd_send_state_request(struct qmi_tmd *tmd)
> +{
> +	struct tmd_set_mitigation_level_resp_msg_v01 tmd_resp;
> +	struct tmd_set_mitigation_level_req_msg_v01 req;
> +	struct qmi_tmd_client *client;
> +	struct qmi_txn txn;
> +	int ret = 0;
> +
> +	client = tmd->client;
You can assign it at declaration time
> +
> +	if (!client->connection_active)
> +		return 0;
Is that an expected scenario?

> +
> +	memset(&req, 0, sizeof(req));
> +	memset(&tmd_resp, 0, sizeof(tmd_resp));
Since you're declaring them above, you can do = { 0 }; instead, which
will be faster

> +
> +	strscpy(req.mitigation_dev_id.mitigation_dev_id, tmd->qmi_name,
> +		QMI_TMD_MITIGATION_DEV_ID_LENGTH_MAX_V01 + 1);
> +	req.mitigation_level = tmd->cur_state;
> +
> +	mutex_lock(&client->mutex);
Look into fancy scoped mutexes https://lwn.net/Articles/934679/

[...]

> +static int qmi_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
> +{
> +	struct qmi_tmd *tmd = cdev->devdata;
> +
> +	if (!tmd)
> +		return -EINVAL;
> +
> +	if (state > tmd->max_state)
> +		return -EINVAL;Would it be useful if this threw an error in dmesg?


> + * When the QMI service starts up on a remote subsystem this function will fetch
> + * the list of TMDs on the subsystem, match it to the TMDs specified in devicetree
> + * and call qmi_tmd_init_control() for each
> + */
> +static void qmi_tmd_svc_arrive(struct work_struct *work)
> +{
> +	struct qmi_tmd_client *client =
> +		container_of(work, struct qmi_tmd_client, svc_arrive_work);
> +
> +	struct tmd_get_mitigation_device_list_req_msg_v01 req;
> +	struct tmd_get_mitigation_device_list_resp_msg_v01 *resp;
> +	int ret = 0, i;
> +	struct qmi_txn txn;
> +
> +	memset(&req, 0, sizeof(req));
= { 0 }

[...]

> +
> +	pr_info("QMI TMD service reset %s\n", client->name);
Is it useful to the user? pr_debug?

> +
> +	list_for_each_entry(tmd, &client->cdev_list, node) {
> +		qmi_tmd_send_state_request(tmd);
> +	}
> +}
> +
> +static void thermal_qmi_del_server(struct qmi_handle *qmi, struct qmi_service *service)
> +{
> +	struct qmi_tmd_client *client = container_of(qmi, struct qmi_tmd_client, handle);
> +
> +	pr_info("QMI TMD service stop %s\n", client->name);
Ditto

> +
> +	client->connection_active = false;
> +}
> +
> +static int thermal_qmi_new_server(struct qmi_handle *qmi, struct qmi_service *service)
> +{
> +	struct qmi_tmd_client *client = container_of(qmi, struct qmi_tmd_client, handle);
> +	struct sockaddr_qrtr sq = { AF_QIPCRTR, service->node, service->port };
> +
> +	pr_info("QMI TMD service start %s\n", client->name);
Ditto

> +		tmd->type = devm_kasprintf(client->dev, GFP_KERNEL, "%s:%s",
> +						client->name, subnode->name);
> +		if (!tmd->type)
> +			return dev_err_probe(dev, -ENOMEM, "Cooling device name\n");
Cooling device name-what? :D

> +
> +		if (of_property_read_string(subnode, "label", &name)) {
> +			return dev_err_probe(client->dev, -EINVAL,
> +					     "Fail to parse dev name for %s\n",
Failed

[...]

> +static int qmi_tmd_client_probe(struct platform_device *pdev)
> +{
> +	struct device *dev;
> +	struct qmi_tmd_client *client;
> +	const struct qmi_instance_id *match;
> +	int ret;
> +
> +	dev = &pdev->dev;
Initialize at declaration

> +
> +	client = devm_kzalloc(dev, sizeof(*client), GFP_KERNEL);
> +	if (!client)
> +		return -ENOMEM;
> +
> +	client->dev = dev;
> +
> +	match = of_device_get_match_data(dev);
> +	if (!match)
> +		return dev_err_probe(dev, -EINVAL, "No match data\n");
> +
> +	client->id = match->id;
> +	client->name = match->name;
> +
> +	mutex_init(&client->mutex);
> +	INIT_LIST_HEAD(&client->cdev_list);
> +	INIT_WORK(&client->svc_arrive_work, qmi_tmd_svc_arrive);
> +
> +	ret = qmi_tmd_alloc_cdevs(client);
> +	if (ret)
> +		return ret;
> +
> +	platform_set_drvdata(pdev, client);
> +
> +	ret = qmi_handle_init(&client->handle,
> +			      TMD_GET_MITIGATION_DEVICE_LIST_RESP_MSG_V01_MAX_MSG_LEN,
> +			      &thermal_qmi_event_ops, NULL);
> +	if (ret < 0)
> +		return dev_err_probe(client->dev, ret, "QMI handle init failed for client %#x\n",
> +			      client->id);
> +
> +	ret = qmi_add_lookup(&client->handle, TMD_SERVICE_ID_V01, TMD_SERVICE_VERS_V01,
> +			     client->id);
> +	if (ret < 0) {
> +		qmi_handle_release(&client->handle);
> +		return dev_err_probe(client->dev, ret, "QMI register failed for client 0x%x\n",
> +			      client->id);
> +	}
> +
> +	return 0;
> +}
> +
> +static int qmi_tmd_client_remove(struct platform_device *pdev)
void + .remove_new

Konrad

